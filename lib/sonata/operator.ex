defmodule Sonata.Operator do
  def unquote(:!)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "!", lhs: lhs, rhs: rhs}
  end

  def unquote(:"!!")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "!!", lhs: lhs, rhs: rhs}
  end

  def unquote(:"!~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "!~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"!~*")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "!~*", lhs: lhs, rhs: rhs}
  end

  def unquote(:"!~~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "!~~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"!~~*")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "!~~*", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#", lhs: lhs, rhs: rhs}
  end

  def unquote(:"##")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "##", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#-")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#-", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#<")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#<", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#<#")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#<#", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#<=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#<=", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#<=#")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#<=#", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#<>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#<>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#=", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#>#")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#>#", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#>=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#>=", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#>=#")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#>=#", lhs: lhs, rhs: rhs}
  end

  def unquote(:"#>>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "#>>", lhs: lhs, rhs: rhs}
  end

  def unquote(:%)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "%", lhs: lhs, rhs: rhs}
  end

  def unquote(:"%#")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "%#", lhs: lhs, rhs: rhs}
  end

  def unquote(:"%%")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "%%", lhs: lhs, rhs: rhs}
  end

  def unquote(:&)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "&", lhs: lhs, rhs: rhs}
  end

  def unquote(:&&)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "&&", lhs: lhs, rhs: rhs}
  end

  def unquote(:"&<")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "&<", lhs: lhs, rhs: rhs}
  end

  def unquote(:"&<|")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "&<|", lhs: lhs, rhs: rhs}
  end

  def unquote(:"&>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "&>", lhs: lhs, rhs: rhs}
  end

  def unquote(:*)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "*", lhs: lhs, rhs: rhs}
  end

  def unquote(:"*<")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "*<", lhs: lhs, rhs: rhs}
  end

  def unquote(:"*<=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "*<=", lhs: lhs, rhs: rhs}
  end

  def unquote(:"*<>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "*<>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"*=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "*=", lhs: lhs, rhs: rhs}
  end

  def unquote(:"*>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "*>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"*>=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "*>=", lhs: lhs, rhs: rhs}
  end

  def unquote(:+)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "+", lhs: lhs, rhs: rhs}
  end

  def unquote(:-)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "-", lhs: lhs, rhs: rhs}
  end

  def unquote(:->)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "->", lhs: lhs, rhs: rhs}
  end

  def unquote(:"->>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "->>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"-|-")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "-|-", lhs: lhs, rhs: rhs}
  end

  def unquote(:/)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "/", lhs: lhs, rhs: rhs}
  end

  def unquote(:<)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<#>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<#>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<->")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<->", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<<")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<<", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<<=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<<=", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<<|")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<<|", lhs: lhs, rhs: rhs}
  end

  def unquote(:<=)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<=", lhs: lhs, rhs: rhs}
  end

  def unquote(:<>)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<?>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<?>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"<^")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "<^", lhs: lhs, rhs: rhs}
  end

  def unquote(:=)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "=", lhs: lhs, rhs: rhs}
  end

  def unquote(:>)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: ">", lhs: lhs, rhs: rhs}
  end

  def unquote(:>=)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: ">=", lhs: lhs, rhs: rhs}
  end

  def unquote(:">>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: ">>", lhs: lhs, rhs: rhs}
  end

  def unquote(:">>=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: ">>=", lhs: lhs, rhs: rhs}
  end

  def unquote(:">^")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: ">^", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?#")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?#", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?&")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?&", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?-")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?-", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?-|")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?-|", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?<@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?<@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?@>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?@>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?|")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?|", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?||")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?||", lhs: lhs, rhs: rhs}
  end

  def unquote(:"?~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "?~", lhs: lhs, rhs: rhs}
  end

  def unquote(:@)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"@-@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "@-@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"@>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "@>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"@@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "@@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"@@@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "@@@", lhs: lhs, rhs: rhs}
  end

  def unquote(:^)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "^", lhs: lhs, rhs: rhs}
  end

  def unquote(:"^<@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "^<@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"^?")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "^?", lhs: lhs, rhs: rhs}
  end

  def unquote(:"^@")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "^@", lhs: lhs, rhs: rhs}
  end

  def unquote(:"^@>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "^@>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"^~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "^~", lhs: lhs, rhs: rhs}
  end

  def unquote(:|)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "|", lhs: lhs, rhs: rhs}
  end

  def unquote(:"|&>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "|&>", lhs: lhs, rhs: rhs}
  end

  def unquote(:"|/")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "|/", lhs: lhs, rhs: rhs}
  end

  def unquote(:"|>>")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "|>>", lhs: lhs, rhs: rhs}
  end

  def unquote(:||)(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "||", lhs: lhs, rhs: rhs}
  end

  def unquote(:"||/")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "||/", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~*")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~*", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~<=~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~<=~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~<~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~<~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~=")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~=", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~>=~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~>=~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~>~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~>~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~~")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~~", lhs: lhs, rhs: rhs}
  end

  def unquote(:"~~*")(lhs, rhs) do
    %Sonata.Expr.Operator{operator: "~~*", lhs: lhs, rhs: rhs}
  end
end
