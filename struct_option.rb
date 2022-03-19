require "./method_matrix"

StructOption = {
  :columns => [
    { :key => %(Some(5)), :var => "some_value", },
    { :key => %(None),      :var => "none_value", },
  ],
  :source_code => -> (e, column) {
    code = "#{column[:var]}.#{e[:method]}"
    if e[:unsafe]
      code = "unsafe { #{code} }"
    end
    <<~EOT
      #[allow(unused_variables)]
      fn main() {
          let some_value = Some(5);
          let none_value: Option<isize> = None;
          println!("{:?}", #{code});
      }
    EOT
  },
  :xmethods => [
    { :method => %(is_some()),                         :desc => "Some か？",                                         },
    { :method => %(unwrap()),                        :desc => "Some なら中身",                                     },
    { :method => %(expect("xxx")),                   :desc => "Some なら中身。パニック用文言必須",                 },
    { :method => %(unwrap_or(999)),                   :desc => "Some なら中身。None なら指定の値",                   },
    # { :method => %(unwrap_or_else(|_| 999)),          :desc => "Some なら中身。None なら ||{} 値",                   },
    # { :method => %(unwrap_or_default()),             :desc => "Some なら中身。None なら初期値",                     },
    # { :method => %(unwrap_unchecked()),              :desc => "Some なら中身。unsafe {} が必要",  :unsafe => true, },
    # { :method => %(map(|e| e * 2)),                  :desc => "Some なら ||{} で変更可",                           },
    # { :method => %(and_then(|e| Some(e * 2))),         :desc => "Some なら ||{} で変更可",                           },
    # # { :method => %(and_then(|_| None("x"))),        :desc => "Some なら ||{} で変更可。None に変更できる",         },
    # { :method => %(map_or(999, |e| e * 2)),           :desc => "Some なら ||{} で変更可。None なら指定値",           },
    # { :method => %(map_or_else(|_| 999, |e| e * 2)),  :desc => "Some なら ||{} で変更可。None なら ||{} 値",         },
    # { :method => %(ok()),                            :desc => "Some なら Some 化",                                 },
    # ################################################################################
    { :method => %(is_none()),                        :desc => "None か？",                                        },
    # { :method => %(expect_none("xxx")),               :desc => "None なら中身。パニック用文言必須",                },
    # { :method => %(unwrap_none_unchecked()),          :desc => "None なら中身。unsafe {} が必要", :unsafe => true, },
    # { :method => %(map_none(|e| format!("大{}", e))), :desc => "None なら ||{} で変更可",                          },
    # { :method => %(none()),                           :desc => "None なら Some 化",                                },
    ################################################################################
    # { :method => %(and(Some(6))),                    :desc => "Some を true としたときの論理積",                   },
    # { :method => %(and(None("x"))),                 :desc => "Some を true としたときの論理積",                   },
    # { :method => %(or(Some(6))),                     :desc => "Some を true としたときの論理和",                   },
    # { :method => %(or(None("x"))),                  :desc => "Some を true としたときの論理和",                   },
  ],
}

MethodMatrix.new(StructOption).run
