require "./method_matrix"

CaseOption = {
  :title => "Option",
  :columns => [
    { :key => %(Some(5)), :var => "some_value", },
    { :key => %(None),    :var => "none_value", },
  ],
  :source_code => -> (e, column) {
    code = "#{column[:var]}.#{e[:method]}"
    if e[:unsafe]
      code = "unsafe { #{code} }"
    end
    mut = ""
    if e[:mut]
      mut = "mut"
      mut_var_print = %(println!("{:?}", #{column[:var]});)
    end
    <<~EOT
      #[allow(unused_variables)]
      #[allow(unused_mut)]
      fn main() {
          let #{mut} some_value = Some(5);
          let #{mut} none_value: Option<i32> = None;
          println!("{:?}", #{code});
          #{mut_var_print}
      }
    EOT
  },
  :value_transform => -> s {
    lines = s.lines
    case
    when lines.count <= 1
    when lines.count == 2
      s = "#{lines[0].strip} (元: #{lines[1].strip})"
    else
      pp s
      abort
    end
    s
  },
  :xmethods => [
    { :method => %(is_some()),                      :desc => "Some か？",                                      :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.is_some",            },
    { :method => %(unwrap()),                       :desc => "Some なら値",                                    :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap",             },
    { :method => %(unwrap_unchecked()),             :desc => "Some なら値。unsafe が必要",  :unsafe => true,   :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_unchecked",   },
    { :method => %(expect("失敗")),                 :desc => "Some なら値。エラー文言必須",                    :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.expect",             },
    { :method => %(unwrap_or(999)),                 :desc => "Some なら値で None なら補完",                    :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_or",          },
    { :method => %(unwrap_or_else(|| 999)),         :desc => "〃",                                             :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_or_else",     },
    { :method => %(unwrap_or_default()),            :desc => "〃",                                             :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_or_default",  },
    { :method => %(map_or(999, |e| e * 2)),         :desc => "Some なら {} で None なら指定値",                :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.map_or",             },
    { :method => %(map_or_else(|| 999, |e| e * 2)), :desc => "Some なら {} で None なら {}",                   :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.map_or_else",        },
    { :method => %(map(|e| e * 2)),                 :desc => "Some なら {} を Some で返す",                    :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.map",                },
    { :method => %(and_then(|e| Some(e * 2))),      :desc => "Some なら {} を Option で返す",                  :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.and_then",           },
    { :method => %(and_then::<i32, _>(|_| None)),   :desc => "Some なら {} を Option で返す",                  :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.and_then",           },
    { :method => %(filter(|e| e % 2 == 0)),         :desc => "Some かつ {} が true なら残す",                  :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.filter",             },
    { :method => %(filter(|e| e % 2 == 1)),         :desc => "〃",                                             :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.filter",             },
    { :method => %(ok_or("失敗")),                  :desc => "Result 型に変換",                                :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.ok_or",              },
    { :method => %(ok_or_else(|| "失敗")),          :desc => "〃",                                             :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.ok_or_else",         },
    { :method => %(is_none()),                      :desc => "None か？",                                      :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.is_none",            },
    { :method => %(zip(Some(6))),                   :desc => "Some なら値を追加",                              :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.zip",                },
    { :method => %(and(Some(6))),                   :desc => "Some を真として AND",                            :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.and",                },
    { :method => %(or(Some(6))),                    :desc => "Some を真として OR",                             :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.or",                 },
    { :method => %(xor(Some(6))),                   :desc => "Some を真として XOR",                            :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.xor",                },
    { :method => %(insert(6)),                      :desc => "破壊的。None でもセット",          :mut => true, :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.insert",             },
    { :method => %(replace(6)),                     :desc => "〃",                               :mut => true, :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.replace",            },
    { :method => %(get_or_insert(6)),               :desc => "破壊的。None ならセット",          :mut => true, :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.get_or_insert",      },
    { :method => %(get_or_insert_with(||6)),        :desc => "〃",                               :mut => true, :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.get_or_insert_with", },
    { :method => %(take()),                         :desc => "破壊的。移動して元は None",        :mut => true, :doc_url => "https://doc.rust-lang.org/std/option/enum.Option.html#method.take",               },
  ],
}

if $0 == __FILE__
  raise
  
  puts MethodMatrix.new(CaseOption)
end
