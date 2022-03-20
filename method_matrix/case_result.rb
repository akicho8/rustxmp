require "./method_matrix"

CaseResult = {
  :title => "Result",
  :columns => [
    { :key => %(Ok(5)),       :var => "ok_value", },
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
          let ok_value: Result<i32, &str> = Ok(5);
          let ng_value: Result<i32, &str> = Err("失敗");
          let ok2_value: Result<i32, &str> = Ok(20);
          println!("{:?}", #{code});
      }
    EOT
  },
  :xmethods => [
    { :method => %(is_ok()),                            :desc => "Ok か？",                                      :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.is_ok", },
    { :method => %(unwrap()),                           :desc => "Ok なら値",                                  :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap", },
    { :method => %(unwrap_unchecked()),                 :desc => "Ok なら値。unsafe が必要",  :unsafe => true, :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_unchecked", },
    { :method => %(expect("大失敗")),                   :desc => "Ok なら値。Err 時の文言必須",                :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.expect", },
    { :method => %(unwrap_or(999)),                     :desc => "Ok なら値で Err なら補完",                   :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_or", },
    { :method => %(unwrap_or_else(|_| 999)),            :desc => "〃",                                           :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_or_else", },
    { :method => %(unwrap_or_default()),                :desc => "〃",                                           :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_or_default", },
    { :method => %(map_or(999, |e| e * 2)),             :desc => "Ok なら {} で Err なら補完",                  :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.map_or", },
    { :method => %(map_or_else(|_| 999, |e| e * 2)),    :desc => "〃",                                          :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.map_or_else", },
    { :method => %(map(|e| e * 2)),                     :desc => "Ok なら {} を Ok で返す",                      :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.map", },
    { :method => %(and_then(|e| Ok(e * 2))),            :desc => "Ok なら {} を Result で返す",                  :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.and_then", },
    { :method => %(and_then::<i32, _>(|_| Err("x"))), :desc => "〃",                                           :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.and_then", },
    ################################################################################
    { :method => %(is_err()),                           :desc => "Err か？",                                     :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.is_err", },
    { :method => %(expect_err("xxx")),                  :desc => "Err なら値。Ok 時の文言必須",                :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.expect_err", },
    { :method => %(unwrap_err_unchecked()),             :desc => "Err なら値。unsafe が必要", :unsafe => true, :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_err_unchecked", },
    { :method => %(map_err(|e| format!("大{}", e))),    :desc => "Err なら {} を Err で返す",                    :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.map_err", },
    { :method => %(err()),                              :desc => "Err なら Some 化",                             :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.err", },
    ################################################################################
    { :method => %(and(Ok(6))),                         :desc => "Ok を真として AND",                              :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.and", },
    { :method => %(or::<i32>(Ok(6))),                 :desc => "Ok を真として OR",                               :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.or", },
    ################################################################################
    { :method => %(ok()),                               :desc => "Ok なら Some 化",                              :doc_url => "https://doc.rust-lang.org/std/result/enum.Result.html#method.ok", },
  ],
}

if $0 == __FILE__
  puts MethodMatrix.new(CaseResult)
end
