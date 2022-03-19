require "./method_matrix"

StructResult = {
  :columns => [
    { :key => %(Ok(200)),     :var => "ok_value", },
    { :key => %(Err("失敗")), :var => "ng_value", },
  ],
  :source_code => -> (e, column) {
    code = "#{column[:var]}.#{e[:method]}"
    if e[:unsafe]
      code = "unsafe { #{code} }"
    end
    <<~EOT
      #[allow(unused_variables)]
      fn main() {
          let ok_value: Result<isize, &str> = Ok(200);
          let ng_value: Result<isize, &str> = Err("失敗");
          let ok2_value: Result<isize, &str> = Ok(20);
          println!("{:?}", #{code});
      }
    EOT
  },
  :xmethods => [
    { :method => %(is_ok()),                         :desc => "Ok か？",                                         },
    { :method => %(unwrap()),                        :desc => "Ok なら中身",                                     },
    { :method => %(expect("xxx")),                   :desc => "Ok なら中身。パニック用文言必須",                 },
    { :method => %(unwrap_or(500)),                   :desc => "Ok なら中身。Err なら指定の値",                   },
    { :method => %(unwrap_or_else(|_| 500)),          :desc => "Ok なら中身。Err なら ||{} 値",                   },
    { :method => %(unwrap_or_default()),             :desc => "Ok なら中身。Err なら初期値",                     },
    { :method => %(unwrap_unchecked()),              :desc => "Ok なら中身。unsafe {} が必要",  :unsafe => true, },
    { :method => %(map(|e| e * 2)),                  :desc => "Ok なら ||{} で変更可",                           },
    { :method => %(and_then(|e| Ok(e * 2))),         :desc => "Ok なら ||{} で変更可",                           },
    # { :method => %(and_then(|_| Err("x"))),        :desc => "Ok なら ||{} で変更可。Err に変更できる",         },
    { :method => %(map_or(500, |e| e * 2)),           :desc => "Ok なら ||{} で変更可。Err なら指定値",           },
    { :method => %(map_or_else(|_| 500, |e| e * 2)),  :desc => "Ok なら ||{} で変更可。Err なら ||{} 値",         },
    { :method => %(ok()),                            :desc => "Ok なら Some 化",                                 },
    ################################################################################
    { :method => %(is_err()),                        :desc => "Err か？",                                        },
    { :method => %(expect_err("xxx")),               :desc => "Err なら中身。パニック用文言必須",                },
    { :method => %(unwrap_err_unchecked()),          :desc => "Err なら中身。unsafe {} が必要", :unsafe => true, },
    { :method => %(map_err(|e| format!("大{}", e))), :desc => "Err なら ||{} で変更可",                          },
    { :method => %(err()),                           :desc => "Err なら Some 化",                                },
    ################################################################################
    # { :method => %(and(Ok(6))),                    :desc => "Ok を true としたときの論理積",                   },
    # { :method => %(and(Err("x"))),                 :desc => "Ok を true としたときの論理積",                   },
    # { :method => %(or(Ok(6))),                     :desc => "Ok を true としたときの論理和",                   },
    # { :method => %(or(Err("x"))),                  :desc => "Ok を true としたときの論理和",                   },
  ],
}

MethodMatrix.new(StructResult).run
