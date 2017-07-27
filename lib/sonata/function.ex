defmodule(Sonata.Function) do
  @doc("abbreviated display of inet value")
  def(abbrev(var1)) do
    %Sonata.Expr.Call{name: "abbrev", arguments: [var1]}
  end
  @doc("absolute value")
  def(abs(var1)) do
    %Sonata.Expr.Call{name: "abs", arguments: [var1]}
  end
  @doc("convert timestamp to abstime")
  def(abstime(var1)) do
    %Sonata.Expr.Call{name: "abstime", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(abstimeeq(var1, var2)) do
    %Sonata.Expr.Call{name: "abstimeeq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(abstimege(var1, var2)) do
    %Sonata.Expr.Call{name: "abstimege", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(abstimegt(var1, var2)) do
    %Sonata.Expr.Call{name: "abstimegt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(abstimein(var1)) do
    %Sonata.Expr.Call{name: "abstimein", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(abstimele(var1, var2)) do
    %Sonata.Expr.Call{name: "abstimele", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(abstimelt(var1, var2)) do
    %Sonata.Expr.Call{name: "abstimelt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(abstimene(var1, var2)) do
    %Sonata.Expr.Call{name: "abstimene", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(abstimeout(var1)) do
    %Sonata.Expr.Call{name: "abstimeout", arguments: [var1]}
  end
  @doc("I/O")
  def(abstimerecv(var1)) do
    %Sonata.Expr.Call{name: "abstimerecv", arguments: [var1]}
  end
  @doc("I/O")
  def(abstimesend(var1)) do
    %Sonata.Expr.Call{name: "abstimesend", arguments: [var1]}
  end
  @doc("contains")
  def(aclcontains(var1, var2)) do
    %Sonata.Expr.Call{name: "aclcontains", arguments: [var1, var2]}
  end
  @doc("TODO")
  def(acldefault(var1, var2)) do
    %Sonata.Expr.Call{name: "acldefault", arguments: [var1, var2]}
  end
  @doc("convert ACL item array to table, for use by information schema")
  def(aclexplode(var1)) do
    %Sonata.Expr.Call{name: "aclexplode", arguments: [var1]}
  end
  @doc("add/update ACL item")
  def(aclinsert(var1, var2)) do
    %Sonata.Expr.Call{name: "aclinsert", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(aclitemeq(var1, var2)) do
    %Sonata.Expr.Call{name: "aclitemeq", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(aclitemin(var1)) do
    %Sonata.Expr.Call{name: "aclitemin", arguments: [var1]}
  end
  @doc("I/O")
  def(aclitemout(var1)) do
    %Sonata.Expr.Call{name: "aclitemout", arguments: [var1]}
  end
  @doc("remove ACL item")
  def(aclremove(var1, var2)) do
    %Sonata.Expr.Call{name: "aclremove", arguments: [var1, var2]}
  end
  @doc("arccosine")
  def(acos(var1)) do
    %Sonata.Expr.Call{name: "acos", arguments: [var1]}
  end
  @doc("date difference preserving months and years")
  def(age(var1, var2)) do
    %Sonata.Expr.Call{name: "age", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(any_in(var1)) do
    %Sonata.Expr.Call{name: "any_in", arguments: [var1]}
  end
  @doc("I/O")
  def(any_out(var1)) do
    %Sonata.Expr.Call{name: "any_out", arguments: [var1]}
  end
  @doc("I/O")
  def(anyarray_in(var1)) do
    %Sonata.Expr.Call{name: "anyarray_in", arguments: [var1]}
  end
  @doc("I/O")
  def(anyarray_out(var1)) do
    %Sonata.Expr.Call{name: "anyarray_out", arguments: [var1]}
  end
  @doc("I/O")
  def(anyarray_recv(var1)) do
    %Sonata.Expr.Call{name: "anyarray_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(anyarray_send(var1)) do
    %Sonata.Expr.Call{name: "anyarray_send", arguments: [var1]}
  end
  @doc("I/O")
  def(anyelement_in(var1)) do
    %Sonata.Expr.Call{name: "anyelement_in", arguments: [var1]}
  end
  @doc("I/O")
  def(anyelement_out(var1)) do
    %Sonata.Expr.Call{name: "anyelement_out", arguments: [var1]}
  end
  @doc("I/O")
  def(anyenum_in(var1)) do
    %Sonata.Expr.Call{name: "anyenum_in", arguments: [var1]}
  end
  @doc("I/O")
  def(anyenum_out(var1)) do
    %Sonata.Expr.Call{name: "anyenum_out", arguments: [var1]}
  end
  @doc("I/O")
  def(anynonarray_in(var1)) do
    %Sonata.Expr.Call{name: "anynonarray_in", arguments: [var1]}
  end
  @doc("I/O")
  def(anynonarray_out(var1)) do
    %Sonata.Expr.Call{name: "anynonarray_out", arguments: [var1]}
  end
  @doc("I/O")
  def(anyrange_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "anyrange_in", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(anyrange_out(var1)) do
    %Sonata.Expr.Call{name: "anyrange_out", arguments: [var1]}
  end
  @doc("implementation of || operator")
  def(anytextcat(var1, var2)) do
    %Sonata.Expr.Call{name: "anytextcat", arguments: [var1, var2]}
  end
  @doc("area of a closed path")
  def(area(var1)) do
    %Sonata.Expr.Call{name: "area", arguments: [var1]}
  end
  @doc("join selectivity for area-comparison operators")
  def(areajoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "areajoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity for area-comparison operators")
  def(areasel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "areasel", arguments: [var1, var2, var3, var4]}
  end
  @doc("concatenate aggregate input into an array")
  def(array_agg(var1)) do
    %Sonata.Expr.Call{name: "array_agg", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(array_agg_array_finalfn(var1, var2)) do
    %Sonata.Expr.Call{name: "array_agg_array_finalfn", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(array_agg_array_transfn(var1, var2)) do
    %Sonata.Expr.Call{name: "array_agg_array_transfn", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(array_agg_finalfn(var1, var2)) do
    %Sonata.Expr.Call{name: "array_agg_finalfn", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(array_agg_transfn(var1, var2)) do
    %Sonata.Expr.Call{name: "array_agg_transfn", arguments: [var1, var2]}
  end
  @doc("append element onto end of array")
  def(array_append(var1, var2)) do
    %Sonata.Expr.Call{name: "array_append", arguments: [var1, var2]}
  end
  @doc("implementation of || operator")
  def(array_cat(var1, var2)) do
    %Sonata.Expr.Call{name: "array_cat", arguments: [var1, var2]}
  end
  @doc("array dimensions")
  def(array_dims(var1)) do
    %Sonata.Expr.Call{name: "array_dims", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(array_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "array_eq", arguments: [var1, var2]}
  end
  @doc("array constructor with value")
  def(array_fill(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "array_fill", arguments: [var1, var2, var3]}
  end
  @doc("implementation of >= operator")
  def(array_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "array_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(array_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "array_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(array_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "array_in", arguments: [var1, var2, var3]}
  end
  @doc("larger of two")
  def(array_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "array_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(array_le(var1, var2)) do
    %Sonata.Expr.Call{name: "array_le", arguments: [var1, var2]}
  end
  @doc("array length")
  def(array_length(var1, var2)) do
    %Sonata.Expr.Call{name: "array_length", arguments: [var1, var2]}
  end
  @doc("array lower dimension")
  def(array_lower(var1, var2)) do
    %Sonata.Expr.Call{name: "array_lower", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(array_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "array_lt", arguments: [var1, var2]}
  end
  @doc("number of array dimensions")
  def(array_ndims(var1)) do
    %Sonata.Expr.Call{name: "array_ndims", arguments: [var1]}
  end
  @doc("implementation of <> operator")
  def(array_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "array_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(array_out(var1)) do
    %Sonata.Expr.Call{name: "array_out", arguments: [var1]}
  end
  @doc("returns an offset of value in array with start index")
  def(array_position(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "array_position", arguments: [var1, var2, var3]}
  end
  @doc("returns an array of offsets of some value in array")
  def(array_positions(var1, var2)) do
    %Sonata.Expr.Call{name: "array_positions", arguments: [var1, var2]}
  end
  @doc("prepend element onto front of array")
  def(array_prepend(var1, var2)) do
    %Sonata.Expr.Call{name: "array_prepend", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(array_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "array_recv", arguments: [var1, var2, var3]}
  end
  @doc("remove any occurrences of an element from an array")
  def(array_remove(var1, var2)) do
    %Sonata.Expr.Call{name: "array_remove", arguments: [var1, var2]}
  end
  @doc("replace any occurrences of an element in an array")
  def(array_replace(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "array_replace", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(array_send(var1)) do
    %Sonata.Expr.Call{name: "array_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(array_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "array_smaller", arguments: [var1, var2]}
  end
  @doc("map array to json")
  def(array_to_json(var1)) do
    %Sonata.Expr.Call{name: "array_to_json", arguments: [var1]}
  end
  @doc("concatenate array elements, using delimiter, into text")
  def(array_to_string(var1, var2)) do
    %Sonata.Expr.Call{name: "array_to_string", arguments: [var1, var2]}
  end
  @doc("array typanalyze")
  def(array_typanalyze(var1)) do
    %Sonata.Expr.Call{name: "array_typanalyze", arguments: [var1]}
  end
  @doc("array upper dimension")
  def(array_upper(var1, var2)) do
    %Sonata.Expr.Call{name: "array_upper", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(arraycontained(var1, var2)) do
    %Sonata.Expr.Call{name: "arraycontained", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(arraycontains(var1, var2)) do
    %Sonata.Expr.Call{name: "arraycontains", arguments: [var1, var2]}
  end
  @doc("join selectivity for array-containment operators")
  def(arraycontjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "arraycontjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity for array-containment operators")
  def(arraycontsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "arraycontsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("implementation of && operator")
  def(arrayoverlap(var1, var2)) do
    %Sonata.Expr.Call{name: "arrayoverlap", arguments: [var1, var2]}
  end
  @doc("convert first char to int4")
  def(ascii(var1)) do
    %Sonata.Expr.Call{name: "ascii", arguments: [var1]}
  end
  @doc("internal conversion function for SQL_ASCII to MULE_INTERNAL")
  def(ascii_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "ascii_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for SQL_ASCII to UTF8")
  def(ascii_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "ascii_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("arcsine")
  def(asin(var1)) do
    %Sonata.Expr.Call{name: "asin", arguments: [var1]}
  end
  @doc("arctangent")
  def(atan(var1)) do
    %Sonata.Expr.Call{name: "atan", arguments: [var1]}
  end
  @doc("arctangent, two arguments")
  def(atan2(var1, var2)) do
    %Sonata.Expr.Call{name: "atan2", arguments: [var1, var2]}
  end
  @doc("the average (arithmetic mean) as numeric of all bigint values")
  def(avg(var1)) do
    %Sonata.Expr.Call{name: "avg", arguments: [var1]}
  end
  @doc("BERNOULLI tablesample method handler")
  def(bernoulli(var1)) do
    %Sonata.Expr.Call{name: "bernoulli", arguments: [var1]}
  end
  @doc("internal conversion function for BIG5 to EUC_TW")
  def(big5_to_euc_tw(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "big5_to_euc_tw", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for BIG5 to MULE_INTERNAL")
  def(big5_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "big5_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for BIG5 to UTF8")
  def(big5_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "big5_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_create_empty_extension(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "binary_upgrade_create_empty_extension", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_array_pg_type_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_array_pg_type_oid", arguments: [var1]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_heap_pg_class_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_heap_pg_class_oid", arguments: [var1]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_index_pg_class_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_index_pg_class_oid", arguments: [var1]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_pg_authid_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_pg_authid_oid", arguments: [var1]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_pg_enum_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_pg_enum_oid", arguments: [var1]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_pg_type_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_pg_type_oid", arguments: [var1]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_toast_pg_class_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_toast_pg_class_oid", arguments: [var1]}
  end
  @doc("for use by pg_upgrade")
  def(binary_upgrade_set_next_toast_pg_type_oid(var1)) do
    %Sonata.Expr.Call{name: "binary_upgrade_set_next_toast_pg_type_oid", arguments: [var1]}
  end
  @doc("convert int4 to bitstring")
  def(bit(var1, var2)) do
    %Sonata.Expr.Call{name: "bit", arguments: [var1, var2]}
  end
  @doc("bitwise-and bit aggregate")
  def(bit_and(var1)) do
    %Sonata.Expr.Call{name: "bit_and", arguments: [var1]}
  end
  @doc("I/O")
  def(bit_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "bit_in", arguments: [var1, var2, var3]}
  end
  @doc("length in bits")
  def(bit_length(var1)) do
    %Sonata.Expr.Call{name: "bit_length", arguments: [var1]}
  end
  @doc("bitwise-or smallint aggregate")
  def(bit_or(var1)) do
    %Sonata.Expr.Call{name: "bit_or", arguments: [var1]}
  end
  @doc("I/O")
  def(bit_out(var1)) do
    %Sonata.Expr.Call{name: "bit_out", arguments: [var1]}
  end
  @doc("I/O")
  def(bit_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "bit_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(bit_send(var1)) do
    %Sonata.Expr.Call{name: "bit_send", arguments: [var1]}
  end
  @doc("implementation of & operator")
  def(bitand(var1, var2)) do
    %Sonata.Expr.Call{name: "bitand", arguments: [var1, var2]}
  end
  @doc("implementation of || operator")
  def(bitcat(var1, var2)) do
    %Sonata.Expr.Call{name: "bitcat", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(bitcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "bitcmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(biteq(var1, var2)) do
    %Sonata.Expr.Call{name: "biteq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(bitge(var1, var2)) do
    %Sonata.Expr.Call{name: "bitge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(bitgt(var1, var2)) do
    %Sonata.Expr.Call{name: "bitgt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(bitle(var1, var2)) do
    %Sonata.Expr.Call{name: "bitle", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(bitlt(var1, var2)) do
    %Sonata.Expr.Call{name: "bitlt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(bitne(var1, var2)) do
    %Sonata.Expr.Call{name: "bitne", arguments: [var1, var2]}
  end
  @doc("implementation of ~ operator")
  def(bitnot(var1)) do
    %Sonata.Expr.Call{name: "bitnot", arguments: [var1]}
  end
  @doc("implementation of | operator")
  def(bitor(var1, var2)) do
    %Sonata.Expr.Call{name: "bitor", arguments: [var1, var2]}
  end
  @doc("implementation of << operator")
  def(bitshiftleft(var1, var2)) do
    %Sonata.Expr.Call{name: "bitshiftleft", arguments: [var1, var2]}
  end
  @doc("implementation of >> operator")
  def(bitshiftright(var1, var2)) do
    %Sonata.Expr.Call{name: "bitshiftright", arguments: [var1, var2]}
  end
  @doc("I/O typmod")
  def(bittypmodin(var1)) do
    %Sonata.Expr.Call{name: "bittypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(bittypmodout(var1)) do
    %Sonata.Expr.Call{name: "bittypmodout", arguments: [var1]}
  end
  @doc("implementation of # operator")
  def(bitxor(var1, var2)) do
    %Sonata.Expr.Call{name: "bitxor", arguments: [var1, var2]}
  end
  @doc("convert int4 to boolean")
  def(bool(var1)) do
    %Sonata.Expr.Call{name: "bool", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(bool_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "bool_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(bool_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "bool_accum_inv", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(bool_alltrue(var1)) do
    %Sonata.Expr.Call{name: "bool_alltrue", arguments: [var1]}
  end
  @doc("boolean-and aggregate")
  def(bool_and(var1)) do
    %Sonata.Expr.Call{name: "bool_and", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(bool_anytrue(var1)) do
    %Sonata.Expr.Call{name: "bool_anytrue", arguments: [var1]}
  end
  @doc("boolean-or aggregate")
  def(bool_or(var1)) do
    %Sonata.Expr.Call{name: "bool_or", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(booland_statefunc(var1, var2)) do
    %Sonata.Expr.Call{name: "booland_statefunc", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(booleq(var1, var2)) do
    %Sonata.Expr.Call{name: "booleq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(boolge(var1, var2)) do
    %Sonata.Expr.Call{name: "boolge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(boolgt(var1, var2)) do
    %Sonata.Expr.Call{name: "boolgt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(boolin(var1)) do
    %Sonata.Expr.Call{name: "boolin", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(boolle(var1, var2)) do
    %Sonata.Expr.Call{name: "boolle", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(boollt(var1, var2)) do
    %Sonata.Expr.Call{name: "boollt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(boolne(var1, var2)) do
    %Sonata.Expr.Call{name: "boolne", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(boolor_statefunc(var1, var2)) do
    %Sonata.Expr.Call{name: "boolor_statefunc", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(boolout(var1)) do
    %Sonata.Expr.Call{name: "boolout", arguments: [var1]}
  end
  @doc("I/O")
  def(boolrecv(var1)) do
    %Sonata.Expr.Call{name: "boolrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(boolsend(var1)) do
    %Sonata.Expr.Call{name: "boolsend", arguments: [var1]}
  end
  @doc("bounding box of two boxes")
  def(bound_box(var1, var2)) do
    %Sonata.Expr.Call{name: "bound_box", arguments: [var1, var2]}
  end
  @doc("convert points to box")
  def(box(var1, var2)) do
    %Sonata.Expr.Call{name: "box", arguments: [var1, var2]}
  end
  @doc("implementation of |>> operator")
  def(box_above(var1, var2)) do
    %Sonata.Expr.Call{name: "box_above", arguments: [var1, var2]}
  end
  @doc("implementation of >^ operator")
  def(box_above_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "box_above_eq", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(box_add(var1, var2)) do
    %Sonata.Expr.Call{name: "box_add", arguments: [var1, var2]}
  end
  @doc("implementation of <<| operator")
  def(box_below(var1, var2)) do
    %Sonata.Expr.Call{name: "box_below", arguments: [var1, var2]}
  end
  @doc("implementation of <^ operator")
  def(box_below_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "box_below_eq", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(box_center(var1)) do
    %Sonata.Expr.Call{name: "box_center", arguments: [var1]}
  end
  @doc("implementation of @> operator")
  def(box_contain(var1, var2)) do
    %Sonata.Expr.Call{name: "box_contain", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(box_contain_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "box_contain_pt", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(box_contained(var1, var2)) do
    %Sonata.Expr.Call{name: "box_contained", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(box_distance(var1, var2)) do
    %Sonata.Expr.Call{name: "box_distance", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(box_div(var1, var2)) do
    %Sonata.Expr.Call{name: "box_div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(box_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "box_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(box_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "box_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(box_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "box_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(box_in(var1)) do
    %Sonata.Expr.Call{name: "box_in", arguments: [var1]}
  end
  @doc("implementation of # operator")
  def(box_intersect(var1, var2)) do
    %Sonata.Expr.Call{name: "box_intersect", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(box_le(var1, var2)) do
    %Sonata.Expr.Call{name: "box_le", arguments: [var1, var2]}
  end
  @doc("implementation of << operator")
  def(box_left(var1, var2)) do
    %Sonata.Expr.Call{name: "box_left", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(box_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "box_lt", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(box_mul(var1, var2)) do
    %Sonata.Expr.Call{name: "box_mul", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(box_out(var1)) do
    %Sonata.Expr.Call{name: "box_out", arguments: [var1]}
  end
  @doc("implementation of |&> operator")
  def(box_overabove(var1, var2)) do
    %Sonata.Expr.Call{name: "box_overabove", arguments: [var1, var2]}
  end
  @doc("implementation of &<| operator")
  def(box_overbelow(var1, var2)) do
    %Sonata.Expr.Call{name: "box_overbelow", arguments: [var1, var2]}
  end
  @doc("implementation of && operator")
  def(box_overlap(var1, var2)) do
    %Sonata.Expr.Call{name: "box_overlap", arguments: [var1, var2]}
  end
  @doc("implementation of &< operator")
  def(box_overleft(var1, var2)) do
    %Sonata.Expr.Call{name: "box_overleft", arguments: [var1, var2]}
  end
  @doc("implementation of &> operator")
  def(box_overright(var1, var2)) do
    %Sonata.Expr.Call{name: "box_overright", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(box_recv(var1)) do
    %Sonata.Expr.Call{name: "box_recv", arguments: [var1]}
  end
  @doc("implementation of >> operator")
  def(box_right(var1, var2)) do
    %Sonata.Expr.Call{name: "box_right", arguments: [var1, var2]}
  end
  @doc("implementation of ~= operator")
  def(box_same(var1, var2)) do
    %Sonata.Expr.Call{name: "box_same", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(box_send(var1)) do
    %Sonata.Expr.Call{name: "box_send", arguments: [var1]}
  end
  @doc("implementation of - operator")
  def(box_sub(var1, var2)) do
    %Sonata.Expr.Call{name: "box_sub", arguments: [var1, var2]}
  end
  @doc("adjust char() to typmod length")
  def(bpchar(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "bpchar", arguments: [var1, var2, var3]}
  end
  @doc("larger of two")
  def(bpchar_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchar_larger", arguments: [var1, var2]}
  end
  @doc("implementation of ~>=~ operator")
  def(bpchar_pattern_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchar_pattern_ge", arguments: [var1, var2]}
  end
  @doc("implementation of ~>~ operator")
  def(bpchar_pattern_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchar_pattern_gt", arguments: [var1, var2]}
  end
  @doc("implementation of ~<=~ operator")
  def(bpchar_pattern_le(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchar_pattern_le", arguments: [var1, var2]}
  end
  @doc("implementation of ~<~ operator")
  def(bpchar_pattern_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchar_pattern_lt", arguments: [var1, var2]}
  end
  @doc("smaller of two")
  def(bpchar_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchar_smaller", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(bpcharcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharcmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(bpchareq(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchareq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(bpcharge(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(bpchargt(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchargt", arguments: [var1, var2]}
  end
  @doc("implementation of ~~* operator")
  def(bpchariclike(var1, var2)) do
    %Sonata.Expr.Call{name: "bpchariclike", arguments: [var1, var2]}
  end
  @doc("implementation of !~~* operator")
  def(bpcharicnlike(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharicnlike", arguments: [var1, var2]}
  end
  @doc("implementation of ~* operator")
  def(bpcharicregexeq(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharicregexeq", arguments: [var1, var2]}
  end
  @doc("implementation of !~* operator")
  def(bpcharicregexne(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharicregexne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(bpcharin(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "bpcharin", arguments: [var1, var2, var3]}
  end
  @doc("implementation of <= operator")
  def(bpcharle(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharle", arguments: [var1, var2]}
  end
  @doc("implementation of ~~ operator")
  def(bpcharlike(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharlike", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(bpcharlt(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharlt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(bpcharne(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharne", arguments: [var1, var2]}
  end
  @doc("implementation of !~~ operator")
  def(bpcharnlike(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharnlike", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(bpcharout(var1)) do
    %Sonata.Expr.Call{name: "bpcharout", arguments: [var1]}
  end
  @doc("I/O")
  def(bpcharrecv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "bpcharrecv", arguments: [var1, var2, var3]}
  end
  @doc("implementation of ~ operator")
  def(bpcharregexeq(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharregexeq", arguments: [var1, var2]}
  end
  @doc("implementation of !~ operator")
  def(bpcharregexne(var1, var2)) do
    %Sonata.Expr.Call{name: "bpcharregexne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(bpcharsend(var1)) do
    %Sonata.Expr.Call{name: "bpcharsend", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(bpchartypmodin(var1)) do
    %Sonata.Expr.Call{name: "bpchartypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(bpchartypmodout(var1)) do
    %Sonata.Expr.Call{name: "bpchartypmodout", arguments: [var1]}
  end
  @doc("BRIN inclusion support")
  def(brin_inclusion_add_value(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "brin_inclusion_add_value", arguments: [var1, var2, var3, var4]}
  end
  @doc("BRIN inclusion support")
  def(brin_inclusion_consistent(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "brin_inclusion_consistent", arguments: [var1, var2, var3]}
  end
  @doc("BRIN inclusion support")
  def(brin_inclusion_opcinfo(var1)) do
    %Sonata.Expr.Call{name: "brin_inclusion_opcinfo", arguments: [var1]}
  end
  @doc("BRIN inclusion support")
  def(brin_inclusion_union(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "brin_inclusion_union", arguments: [var1, var2, var3]}
  end
  @doc("BRIN minmax support")
  def(brin_minmax_add_value(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "brin_minmax_add_value", arguments: [var1, var2, var3, var4]}
  end
  @doc("BRIN minmax support")
  def(brin_minmax_consistent(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "brin_minmax_consistent", arguments: [var1, var2, var3]}
  end
  @doc("BRIN minmax support")
  def(brin_minmax_opcinfo(var1)) do
    %Sonata.Expr.Call{name: "brin_minmax_opcinfo", arguments: [var1]}
  end
  @doc("BRIN minmax support")
  def(brin_minmax_union(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "brin_minmax_union", arguments: [var1, var2, var3]}
  end
  @doc("brin: standalone scan new table pages")
  def(brin_summarize_new_values(var1)) do
    %Sonata.Expr.Call{name: "brin_summarize_new_values", arguments: [var1]}
  end
  @doc("brin(internal)")
  def(brinbeginscan(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "brinbeginscan", arguments: [var1, var2, var3]}
  end
  @doc("brin(internal)")
  def(brinbuild(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "brinbuild", arguments: [var1, var2, var3]}
  end
  @doc("brin(internal)")
  def(brinbuildempty(var1)) do
    %Sonata.Expr.Call{name: "brinbuildempty", arguments: [var1]}
  end
  @doc("brin(internal)")
  def(brinbulkdelete(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "brinbulkdelete", arguments: [var1, var2, var3, var4]}
  end
  @doc("brin(internal)")
  def(brincostestimate(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "brincostestimate", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("brin(internal)")
  def(brinendscan(var1)) do
    %Sonata.Expr.Call{name: "brinendscan", arguments: [var1]}
  end
  @doc("brin(internal)")
  def(bringetbitmap(var1, var2)) do
    %Sonata.Expr.Call{name: "bringetbitmap", arguments: [var1, var2]}
  end
  @doc("brin(internal)")
  def(brininsert(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "brininsert", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("brin(internal)")
  def(brinmarkpos(var1)) do
    %Sonata.Expr.Call{name: "brinmarkpos", arguments: [var1]}
  end
  @doc("brin(internal)")
  def(brinoptions(var1, var2)) do
    %Sonata.Expr.Call{name: "brinoptions", arguments: [var1, var2]}
  end
  @doc("brin(internal)")
  def(brinrescan(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "brinrescan", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("brin(internal)")
  def(brinrestrpos(var1)) do
    %Sonata.Expr.Call{name: "brinrestrpos", arguments: [var1]}
  end
  @doc("brin(internal)")
  def(brinvacuumcleanup(var1, var2)) do
    %Sonata.Expr.Call{name: "brinvacuumcleanup", arguments: [var1, var2]}
  end
  @doc("broadcast address of network")
  def(broadcast(var1)) do
    %Sonata.Expr.Call{name: "broadcast", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btabstimecmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btabstimecmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btarraycmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btarraycmp", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btbeginscan(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "btbeginscan", arguments: [var1, var2, var3]}
  end
  @doc("less-equal-greater")
  def(btboolcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btboolcmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btbpchar_pattern_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btbpchar_pattern_cmp", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btbuild(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "btbuild", arguments: [var1, var2, var3]}
  end
  @doc("btree(internal)")
  def(btbuildempty(var1)) do
    %Sonata.Expr.Call{name: "btbuildempty", arguments: [var1]}
  end
  @doc("btree(internal)")
  def(btbulkdelete(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "btbulkdelete", arguments: [var1, var2, var3, var4]}
  end
  @doc("btree(internal)")
  def(btcanreturn(var1, var2)) do
    %Sonata.Expr.Call{name: "btcanreturn", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btcharcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btcharcmp", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btcostestimate(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "btcostestimate", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("btree(internal)")
  def(btendscan(var1)) do
    %Sonata.Expr.Call{name: "btendscan", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btfloat48cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btfloat48cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btfloat4cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btfloat4cmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(btfloat4sortsupport(var1)) do
    %Sonata.Expr.Call{name: "btfloat4sortsupport", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btfloat84cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btfloat84cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btfloat8cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btfloat8cmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(btfloat8sortsupport(var1)) do
    %Sonata.Expr.Call{name: "btfloat8sortsupport", arguments: [var1]}
  end
  @doc("btree(internal)")
  def(btgetbitmap(var1, var2)) do
    %Sonata.Expr.Call{name: "btgetbitmap", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btgettuple(var1, var2)) do
    %Sonata.Expr.Call{name: "btgettuple", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btinsert(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "btinsert", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("less-equal-greater")
  def(btint24cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint24cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btint28cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint28cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btint2cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint2cmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(btint2sortsupport(var1)) do
    %Sonata.Expr.Call{name: "btint2sortsupport", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btint42cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint42cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btint48cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint48cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btint4cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint4cmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(btint4sortsupport(var1)) do
    %Sonata.Expr.Call{name: "btint4sortsupport", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btint82cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint82cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btint84cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint84cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btint8cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btint8cmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(btint8sortsupport(var1)) do
    %Sonata.Expr.Call{name: "btint8sortsupport", arguments: [var1]}
  end
  @doc("btree(internal)")
  def(btmarkpos(var1)) do
    %Sonata.Expr.Call{name: "btmarkpos", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btnamecmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btnamecmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(btnamesortsupport(var1)) do
    %Sonata.Expr.Call{name: "btnamesortsupport", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btoidcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btoidcmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(btoidsortsupport(var1)) do
    %Sonata.Expr.Call{name: "btoidsortsupport", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(btoidvectorcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btoidvectorcmp", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btoptions(var1, var2)) do
    %Sonata.Expr.Call{name: "btoptions", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btrecordcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btrecordcmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater based on byte images")
  def(btrecordimagecmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btrecordimagecmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(btreltimecmp(var1, var2)) do
    %Sonata.Expr.Call{name: "btreltimecmp", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btrescan(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "btrescan", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("btree(internal)")
  def(btrestrpos(var1)) do
    %Sonata.Expr.Call{name: "btrestrpos", arguments: [var1]}
  end
  @doc("trim both ends of string")
  def(btrim(var1, var2)) do
    %Sonata.Expr.Call{name: "btrim", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(bttext_pattern_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "bttext_pattern_cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(bttextcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "bttextcmp", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(bttextsortsupport(var1)) do
    %Sonata.Expr.Call{name: "bttextsortsupport", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(bttidcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "bttidcmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(bttintervalcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "bttintervalcmp", arguments: [var1, var2]}
  end
  @doc("btree(internal)")
  def(btvacuumcleanup(var1, var2)) do
    %Sonata.Expr.Call{name: "btvacuumcleanup", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(bytea_string_agg_finalfn(var1)) do
    %Sonata.Expr.Call{name: "bytea_string_agg_finalfn", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(bytea_string_agg_transfn(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "bytea_string_agg_transfn", arguments: [var1, var2, var3]}
  end
  @doc("implementation of || operator")
  def(byteacat(var1, var2)) do
    %Sonata.Expr.Call{name: "byteacat", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(byteacmp(var1, var2)) do
    %Sonata.Expr.Call{name: "byteacmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(byteaeq(var1, var2)) do
    %Sonata.Expr.Call{name: "byteaeq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(byteage(var1, var2)) do
    %Sonata.Expr.Call{name: "byteage", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(byteagt(var1, var2)) do
    %Sonata.Expr.Call{name: "byteagt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(byteain(var1)) do
    %Sonata.Expr.Call{name: "byteain", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(byteale(var1, var2)) do
    %Sonata.Expr.Call{name: "byteale", arguments: [var1, var2]}
  end
  @doc("implementation of ~~ operator")
  def(bytealike(var1, var2)) do
    %Sonata.Expr.Call{name: "bytealike", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(bytealt(var1, var2)) do
    %Sonata.Expr.Call{name: "bytealt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(byteane(var1, var2)) do
    %Sonata.Expr.Call{name: "byteane", arguments: [var1, var2]}
  end
  @doc("implementation of !~~ operator")
  def(byteanlike(var1, var2)) do
    %Sonata.Expr.Call{name: "byteanlike", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(byteaout(var1)) do
    %Sonata.Expr.Call{name: "byteaout", arguments: [var1]}
  end
  @doc("I/O")
  def(bytearecv(var1)) do
    %Sonata.Expr.Call{name: "bytearecv", arguments: [var1]}
  end
  @doc("I/O")
  def(byteasend(var1)) do
    %Sonata.Expr.Call{name: "byteasend", arguments: [var1]}
  end
  @doc("array cardinality")
  def(cardinality(var1)) do
    %Sonata.Expr.Call{name: "cardinality", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(cash_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(cash_div_cash(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_div_cash", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(cash_div_flt4(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_div_flt4", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(cash_div_flt8(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_div_flt8", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(cash_div_int2(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_div_int2", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(cash_div_int4(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_div_int4", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(cash_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(cash_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(cash_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(cash_in(var1)) do
    %Sonata.Expr.Call{name: "cash_in", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(cash_le(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(cash_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(cash_mi(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(cash_mul_flt4(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_mul_flt4", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(cash_mul_flt8(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_mul_flt8", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(cash_mul_int2(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_mul_int2", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(cash_mul_int4(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_mul_int4", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(cash_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(cash_out(var1)) do
    %Sonata.Expr.Call{name: "cash_out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(cash_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "cash_pl", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(cash_recv(var1)) do
    %Sonata.Expr.Call{name: "cash_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(cash_send(var1)) do
    %Sonata.Expr.Call{name: "cash_send", arguments: [var1]}
  end
  @doc("output money amount as words")
  def(cash_words(var1)) do
    %Sonata.Expr.Call{name: "cash_words", arguments: [var1]}
  end
  @doc("larger of two")
  def(cashlarger(var1, var2)) do
    %Sonata.Expr.Call{name: "cashlarger", arguments: [var1, var2]}
  end
  @doc("smaller of two")
  def(cashsmaller(var1, var2)) do
    %Sonata.Expr.Call{name: "cashsmaller", arguments: [var1, var2]}
  end
  @doc("cube root")
  def(cbrt(var1)) do
    %Sonata.Expr.Call{name: "cbrt", arguments: [var1]}
  end
  @doc("smallest integer >= value")
  def(ceil(var1)) do
    %Sonata.Expr.Call{name: "ceil", arguments: [var1]}
  end
  @doc("smallest integer >= value")
  def(ceiling(var1)) do
    %Sonata.Expr.Call{name: "ceiling", arguments: [var1]}
  end
  @doc("center of")
  def(center(var1)) do
    %Sonata.Expr.Call{name: "center", arguments: [var1]}
  end
  @doc("convert text to char")
  def(char(var1)) do
    %Sonata.Expr.Call{name: "char", arguments: [var1]}
  end
  @doc("character length")
  def(char_length(var1)) do
    %Sonata.Expr.Call{name: "char_length", arguments: [var1]}
  end
  @doc("character length")
  def(character_length(var1)) do
    %Sonata.Expr.Call{name: "character_length", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(chareq(var1, var2)) do
    %Sonata.Expr.Call{name: "chareq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(charge(var1, var2)) do
    %Sonata.Expr.Call{name: "charge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(chargt(var1, var2)) do
    %Sonata.Expr.Call{name: "chargt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(charin(var1)) do
    %Sonata.Expr.Call{name: "charin", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(charle(var1, var2)) do
    %Sonata.Expr.Call{name: "charle", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(charlt(var1, var2)) do
    %Sonata.Expr.Call{name: "charlt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(charne(var1, var2)) do
    %Sonata.Expr.Call{name: "charne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(charout(var1)) do
    %Sonata.Expr.Call{name: "charout", arguments: [var1]}
  end
  @doc("I/O")
  def(charrecv(var1)) do
    %Sonata.Expr.Call{name: "charrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(charsend(var1)) do
    %Sonata.Expr.Call{name: "charsend", arguments: [var1]}
  end
  @doc("convert int4 to char")
  def(chr(var1)) do
    %Sonata.Expr.Call{name: "chr", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(cideq(var1, var2)) do
    %Sonata.Expr.Call{name: "cideq", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(cidin(var1)) do
    %Sonata.Expr.Call{name: "cidin", arguments: [var1]}
  end
  @doc("I/O")
  def(cidout(var1)) do
    %Sonata.Expr.Call{name: "cidout", arguments: [var1]}
  end
  @doc("convert inet to cidr")
  def(cidr(var1)) do
    %Sonata.Expr.Call{name: "cidr", arguments: [var1]}
  end
  @doc("I/O")
  def(cidr_in(var1)) do
    %Sonata.Expr.Call{name: "cidr_in", arguments: [var1]}
  end
  @doc("I/O")
  def(cidr_out(var1)) do
    %Sonata.Expr.Call{name: "cidr_out", arguments: [var1]}
  end
  @doc("I/O")
  def(cidr_recv(var1)) do
    %Sonata.Expr.Call{name: "cidr_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(cidr_send(var1)) do
    %Sonata.Expr.Call{name: "cidr_send", arguments: [var1]}
  end
  @doc("I/O")
  def(cidrecv(var1)) do
    %Sonata.Expr.Call{name: "cidrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(cidsend(var1)) do
    %Sonata.Expr.Call{name: "cidsend", arguments: [var1]}
  end
  @doc("convert point and radius to circle")
  def(circle(var1, var2)) do
    %Sonata.Expr.Call{name: "circle", arguments: [var1, var2]}
  end
  @doc("implementation of |>> operator")
  def(circle_above(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_above", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(circle_add_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_add_pt", arguments: [var1, var2]}
  end
  @doc("implementation of <<| operator")
  def(circle_below(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_below", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(circle_center(var1)) do
    %Sonata.Expr.Call{name: "circle_center", arguments: [var1]}
  end
  @doc("implementation of @> operator")
  def(circle_contain(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_contain", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(circle_contain_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_contain_pt", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(circle_contained(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_contained", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(circle_distance(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_distance", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(circle_div_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_div_pt", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(circle_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(circle_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(circle_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(circle_in(var1)) do
    %Sonata.Expr.Call{name: "circle_in", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(circle_le(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_le", arguments: [var1, var2]}
  end
  @doc("implementation of << operator")
  def(circle_left(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_left", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(circle_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_lt", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(circle_mul_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_mul_pt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(circle_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(circle_out(var1)) do
    %Sonata.Expr.Call{name: "circle_out", arguments: [var1]}
  end
  @doc("implementation of |&> operator")
  def(circle_overabove(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_overabove", arguments: [var1, var2]}
  end
  @doc("implementation of &<| operator")
  def(circle_overbelow(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_overbelow", arguments: [var1, var2]}
  end
  @doc("implementation of && operator")
  def(circle_overlap(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_overlap", arguments: [var1, var2]}
  end
  @doc("implementation of &< operator")
  def(circle_overleft(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_overleft", arguments: [var1, var2]}
  end
  @doc("implementation of &> operator")
  def(circle_overright(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_overright", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(circle_recv(var1)) do
    %Sonata.Expr.Call{name: "circle_recv", arguments: [var1]}
  end
  @doc("implementation of >> operator")
  def(circle_right(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_right", arguments: [var1, var2]}
  end
  @doc("implementation of ~= operator")
  def(circle_same(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_same", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(circle_send(var1)) do
    %Sonata.Expr.Call{name: "circle_send", arguments: [var1]}
  end
  @doc("implementation of - operator")
  def(circle_sub_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "circle_sub_pt", arguments: [var1, var2]}
  end
  @doc("current clock time")
  def(clock_timestamp()) do
    %Sonata.Expr.Call{name: "clock_timestamp", arguments: []}
  end
  @doc("implementation of ## operator")
  def(close_lb(var1, var2)) do
    %Sonata.Expr.Call{name: "close_lb", arguments: [var1, var2]}
  end
  @doc("implementation of ## operator")
  def(close_ls(var1, var2)) do
    %Sonata.Expr.Call{name: "close_ls", arguments: [var1, var2]}
  end
  @doc("implementation of ## operator")
  def(close_lseg(var1, var2)) do
    %Sonata.Expr.Call{name: "close_lseg", arguments: [var1, var2]}
  end
  @doc("implementation of ## operator")
  def(close_pb(var1, var2)) do
    %Sonata.Expr.Call{name: "close_pb", arguments: [var1, var2]}
  end
  @doc("implementation of ## operator")
  def(close_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "close_pl", arguments: [var1, var2]}
  end
  @doc("implementation of ## operator")
  def(close_ps(var1, var2)) do
    %Sonata.Expr.Call{name: "close_ps", arguments: [var1, var2]}
  end
  @doc("implementation of ## operator")
  def(close_sb(var1, var2)) do
    %Sonata.Expr.Call{name: "close_sb", arguments: [var1, var2]}
  end
  @doc("implementation of ## operator")
  def(close_sl(var1, var2)) do
    %Sonata.Expr.Call{name: "close_sl", arguments: [var1, var2]}
  end
  @doc("get description for table column")
  def(col_description(var1, var2)) do
    %Sonata.Expr.Call{name: "col_description", arguments: [var1, var2]}
  end
  @doc("concatenate values")
  def(concat(var1)) do
    %Sonata.Expr.Call{name: "concat", arguments: [var1]}
  end
  @doc("concatenate values with separators")
  def(concat_ws(var1, var2)) do
    %Sonata.Expr.Call{name: "concat_ws", arguments: [var1, var2]}
  end
  @doc("join selectivity for containment comparison operators")
  def(contjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "contjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity for containment comparison operators")
  def(contsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "contsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("convert string with specified encoding names")
  def(convert(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "convert", arguments: [var1, var2, var3]}
  end
  @doc("convert string with specified source encoding name")
  def(convert_from(var1, var2)) do
    %Sonata.Expr.Call{name: "convert_from", arguments: [var1, var2]}
  end
  @doc("convert string with specified destination encoding name")
  def(convert_to(var1, var2)) do
    %Sonata.Expr.Call{name: "convert_to", arguments: [var1, var2]}
  end
  @doc("correlation coefficient")
  def(corr(var1, var2)) do
    %Sonata.Expr.Call{name: "corr", arguments: [var1, var2]}
  end
  @doc("cosine")
  def(cos(var1)) do
    %Sonata.Expr.Call{name: "cos", arguments: [var1]}
  end
  @doc("cotangent")
  def(cot(var1)) do
    %Sonata.Expr.Call{name: "cot", arguments: [var1]}
  end
  @doc("number of input rows for which the input expression is not null")
  def(count(var1)) do
    %Sonata.Expr.Call{name: "count", arguments: [var1]}
  end
  @doc("population covariance")
  def(covar_pop(var1, var2)) do
    %Sonata.Expr.Call{name: "covar_pop", arguments: [var1, var2]}
  end
  @doc("sample covariance")
  def(covar_samp(var1, var2)) do
    %Sonata.Expr.Call{name: "covar_samp", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(cstring_in(var1)) do
    %Sonata.Expr.Call{name: "cstring_in", arguments: [var1]}
  end
  @doc("I/O")
  def(cstring_out(var1)) do
    %Sonata.Expr.Call{name: "cstring_out", arguments: [var1]}
  end
  @doc("I/O")
  def(cstring_recv(var1)) do
    %Sonata.Expr.Call{name: "cstring_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(cstring_send(var1)) do
    %Sonata.Expr.Call{name: "cstring_send", arguments: [var1]}
  end
  @doc("cumulative distribution of hypothetical row")
  def(cume_dist(var1)) do
    %Sonata.Expr.Call{name: "cume_dist", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(cume_dist_final(var1, var2)) do
    %Sonata.Expr.Call{name: "cume_dist_final", arguments: [var1, var2]}
  end
  @doc("name of the current database")
  def(current_database()) do
    %Sonata.Expr.Call{name: "current_database", arguments: []}
  end
  @doc("get the currently executing query")
  def(current_query()) do
    %Sonata.Expr.Call{name: "current_query", arguments: []}
  end
  @doc("current schema name")
  def(current_schema()) do
    %Sonata.Expr.Call{name: "current_schema", arguments: []}
  end
  @doc("current schema search list")
  def(current_schemas(var1)) do
    %Sonata.Expr.Call{name: "current_schemas", arguments: [var1]}
  end
  @doc("SHOW X as a function")
  def(current_setting(var1)) do
    %Sonata.Expr.Call{name: "current_setting", arguments: [var1]}
  end
  @doc("current user name")
  def(current_user()) do
    %Sonata.Expr.Call{name: "current_user", arguments: []}
  end
  @doc("latest tid of a tuple")
  def(currtid(var1, var2)) do
    %Sonata.Expr.Call{name: "currtid", arguments: [var1, var2]}
  end
  @doc("latest tid of a tuple")
  def(currtid2(var1, var2)) do
    %Sonata.Expr.Call{name: "currtid2", arguments: [var1, var2]}
  end
  @doc("sequence current value")
  def(currval(var1)) do
    %Sonata.Expr.Call{name: "currval", arguments: [var1]}
  end
  @doc("map rows from cursor to XML")
  def(cursor_to_xml(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "cursor_to_xml", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("map cursor structure to XML Schema")
  def(cursor_to_xmlschema(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "cursor_to_xmlschema", arguments: [var1, var2, var3, var4]}
  end
  @doc("map database contents to XML")
  def(database_to_xml(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "database_to_xml", arguments: [var1, var2, var3]}
  end
  @doc("map database contents and structure to XML and XML Schema")
  def(database_to_xml_and_xmlschema(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "database_to_xml_and_xmlschema", arguments: [var1, var2, var3]}
  end
  @doc("map database structure to XML Schema")
  def(database_to_xmlschema(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "database_to_xmlschema", arguments: [var1, var2, var3]}
  end
  @doc("convert timestamp to date")
  def(date(var1)) do
    %Sonata.Expr.Call{name: "date", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(date_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(date_cmp_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_cmp_timestamp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(date_cmp_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "date_cmp_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(date_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "date_eq", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(date_eq_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_eq_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(date_eq_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "date_eq_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(date_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "date_ge", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(date_ge_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_ge_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(date_ge_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "date_ge_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(date_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "date_gt", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(date_gt_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_gt_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(date_gt_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "date_gt_timestamptz", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(date_in(var1)) do
    %Sonata.Expr.Call{name: "date_in", arguments: [var1]}
  end
  @doc("larger of two")
  def(date_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "date_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(date_le(var1, var2)) do
    %Sonata.Expr.Call{name: "date_le", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(date_le_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_le_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(date_le_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "date_le_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(date_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "date_lt", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(date_lt_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_lt_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(date_lt_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "date_lt_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(date_mi(var1, var2)) do
    %Sonata.Expr.Call{name: "date_mi", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(date_mi_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "date_mi_interval", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(date_mii(var1, var2)) do
    %Sonata.Expr.Call{name: "date_mii", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(date_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "date_ne", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(date_ne_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "date_ne_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(date_ne_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "date_ne_timestamptz", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(date_out(var1)) do
    %Sonata.Expr.Call{name: "date_out", arguments: [var1]}
  end
  @doc("extract field from abstime")
  def(date_part(var1, var2)) do
    %Sonata.Expr.Call{name: "date_part", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(date_pl_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "date_pl_interval", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(date_pli(var1, var2)) do
    %Sonata.Expr.Call{name: "date_pli", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(date_recv(var1)) do
    %Sonata.Expr.Call{name: "date_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(date_send(var1)) do
    %Sonata.Expr.Call{name: "date_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(date_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "date_smaller", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(date_sortsupport(var1)) do
    %Sonata.Expr.Call{name: "date_sortsupport", arguments: [var1]}
  end
  @doc("truncate interval to specified units")
  def(date_trunc(var1, var2)) do
    %Sonata.Expr.Call{name: "date_trunc", arguments: [var1, var2]}
  end
  @doc("daterange constructor")
  def(daterange(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "daterange", arguments: [var1, var2, var3]}
  end
  @doc("convert a date range to canonical form")
  def(daterange_canonical(var1)) do
    %Sonata.Expr.Call{name: "daterange_canonical", arguments: [var1]}
  end
  @doc("float8 difference of two date values")
  def(daterange_subdiff(var1, var2)) do
    %Sonata.Expr.Call{name: "daterange_subdiff", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(datetime_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "datetime_pl", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(datetimetz_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "datetimetz_pl", arguments: [var1, var2]}
  end
  @doc("implementation of ||/ operator")
  def(dcbrt(var1)) do
    %Sonata.Expr.Call{name: "dcbrt", arguments: [var1]}
  end
  @doc("convert ascii-encoded text string into bytea value")
  def(decode(var1, var2)) do
    %Sonata.Expr.Call{name: "decode", arguments: [var1, var2]}
  end
  @doc("radians to degrees")
  def(degrees(var1)) do
    %Sonata.Expr.Call{name: "degrees", arguments: [var1]}
  end
  @doc("rank of hypothetical row without gaps")
  def(dense_rank(var1)) do
    %Sonata.Expr.Call{name: "dense_rank", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(dense_rank_final(var1, var2)) do
    %Sonata.Expr.Call{name: "dense_rank_final", arguments: [var1, var2]}
  end
  @doc("natural exponential (e^x)")
  def(dexp(var1)) do
    %Sonata.Expr.Call{name: "dexp", arguments: [var1]}
  end
  @doc("box diagonal")
  def(diagonal(var1)) do
    %Sonata.Expr.Call{name: "diagonal", arguments: [var1]}
  end
  @doc("diameter of circle")
  def(diameter(var1)) do
    %Sonata.Expr.Call{name: "diameter", arguments: [var1]}
  end
  @doc("(internal)")
  def(dispell_init(var1)) do
    %Sonata.Expr.Call{name: "dispell_init", arguments: [var1]}
  end
  @doc("(internal)")
  def(dispell_lexize(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "dispell_lexize", arguments: [var1, var2, var3, var4]}
  end
  @doc("implementation of <-> operator")
  def(dist_cpoint(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_cpoint", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_cpoly(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_cpoly", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_lb(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_lb", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_pb(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_pb", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_pc(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_pc", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_pl", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_polyp(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_polyp", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_ppath(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_ppath", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_ppoly(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_ppoly", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_ps(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_ps", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_sb(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_sb", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(dist_sl(var1, var2)) do
    %Sonata.Expr.Call{name: "dist_sl", arguments: [var1, var2]}
  end
  @doc("trunc(x/y)")
  def(div(var1, var2)) do
    %Sonata.Expr.Call{name: "div", arguments: [var1, var2]}
  end
  @doc("natural logarithm")
  def(dlog1(var1)) do
    %Sonata.Expr.Call{name: "dlog1", arguments: [var1]}
  end
  @doc("base 10 logarithm")
  def(dlog10(var1)) do
    %Sonata.Expr.Call{name: "dlog10", arguments: [var1]}
  end
  @doc("I/O")
  def(domain_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "domain_in", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(domain_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "domain_recv", arguments: [var1, var2, var3]}
  end
  @doc("implementation of ^ operator")
  def(dpow(var1, var2)) do
    %Sonata.Expr.Call{name: "dpow", arguments: [var1, var2]}
  end
  @doc("round to nearest integer")
  def(dround(var1)) do
    %Sonata.Expr.Call{name: "dround", arguments: [var1]}
  end
  @doc("(internal)")
  def(dsimple_init(var1)) do
    %Sonata.Expr.Call{name: "dsimple_init", arguments: [var1]}
  end
  @doc("(internal)")
  def(dsimple_lexize(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "dsimple_lexize", arguments: [var1, var2, var3, var4]}
  end
  @doc("implementation of |/ operator")
  def(dsqrt(var1)) do
    %Sonata.Expr.Call{name: "dsqrt", arguments: [var1]}
  end
  @doc("(internal)")
  def(dsynonym_init(var1)) do
    %Sonata.Expr.Call{name: "dsynonym_init", arguments: [var1]}
  end
  @doc("(internal)")
  def(dsynonym_lexize(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "dsynonym_lexize", arguments: [var1, var2, var3, var4]}
  end
  @doc("truncate to integer")
  def(dtrunc(var1)) do
    %Sonata.Expr.Call{name: "dtrunc", arguments: [var1]}
  end
  @doc("implementation of <@ operator")
  def(elem_contained_by_range(var1, var2)) do
    %Sonata.Expr.Call{name: "elem_contained_by_range", arguments: [var1, var2]}
  end
  @doc("convert bytea value into some ascii-only text string")
  def(encode(var1, var2)) do
    %Sonata.Expr.Call{name: "encode", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(enum_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(enum_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_eq", arguments: [var1, var2]}
  end
  @doc("first value of the input enum type")
  def(enum_first(var1)) do
    %Sonata.Expr.Call{name: "enum_first", arguments: [var1]}
  end
  @doc("implementation of >= operator")
  def(enum_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(enum_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(enum_in(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_in", arguments: [var1, var2]}
  end
  @doc("larger of two")
  def(enum_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_larger", arguments: [var1, var2]}
  end
  @doc("last value of the input enum type")
  def(enum_last(var1)) do
    %Sonata.Expr.Call{name: "enum_last", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(enum_le(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(enum_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(enum_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(enum_out(var1)) do
    %Sonata.Expr.Call{name: "enum_out", arguments: [var1]}
  end
  @doc("range between the two given enum values, as an ordered array")
  def(enum_range(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_range", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(enum_recv(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_recv", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(enum_send(var1)) do
    %Sonata.Expr.Call{name: "enum_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(enum_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "enum_smaller", arguments: [var1, var2]}
  end
  @doc("join selectivity of = and related operators")
  def(eqjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "eqjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of = and related operators")
  def(eqsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "eqsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("internal conversion function for EUC_CN to MULE_INTERNAL")
  def(euc_cn_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_cn_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_CN to UTF8")
  def(euc_cn_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_cn_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_JIS_2004 to SHIFT_JIS_2004")
  def(euc_jis_2004_to_shift_jis_2004(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_jis_2004_to_shift_jis_2004", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_JIS_2004 to UTF8")
  def(euc_jis_2004_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_jis_2004_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_JP to MULE_INTERNAL")
  def(euc_jp_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_jp_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_JP to SJIS")
  def(euc_jp_to_sjis(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_jp_to_sjis", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_JP to UTF8")
  def(euc_jp_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_jp_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_KR to MULE_INTERNAL")
  def(euc_kr_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_kr_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_KR to UTF8")
  def(euc_kr_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_kr_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_TW to BIG5")
  def(euc_tw_to_big5(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_tw_to_big5", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_TW to MULE_INTERNAL")
  def(euc_tw_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_tw_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for EUC_TW to UTF8")
  def(euc_tw_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "euc_tw_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("I/O")
  def(event_trigger_in(var1)) do
    %Sonata.Expr.Call{name: "event_trigger_in", arguments: [var1]}
  end
  @doc("I/O")
  def(event_trigger_out(var1)) do
    %Sonata.Expr.Call{name: "event_trigger_out", arguments: [var1]}
  end
  @doc("boolean-and aggregate")
  def(every(var1)) do
    %Sonata.Expr.Call{name: "every", arguments: [var1]}
  end
  @doc("natural exponential (e^x)")
  def(exp(var1)) do
    %Sonata.Expr.Call{name: "exp", arguments: [var1]}
  end
  @doc("factorial")
  def(factorial(var1)) do
    %Sonata.Expr.Call{name: "factorial", arguments: [var1]}
  end
  @doc("address family (4 for IPv4, 6 for IPv6)")
  def(family(var1)) do
    %Sonata.Expr.Call{name: "family", arguments: [var1]}
  end
  @doc("I/O")
  def(fdw_handler_in(var1)) do
    %Sonata.Expr.Call{name: "fdw_handler_in", arguments: [var1]}
  end
  @doc("I/O")
  def(fdw_handler_out(var1)) do
    %Sonata.Expr.Call{name: "fdw_handler_out", arguments: [var1]}
  end
  @doc("fetch the first row value")
  def(first_value(var1)) do
    %Sonata.Expr.Call{name: "first_value", arguments: [var1]}
  end
  @doc("convert float8 to float4")
  def(float4(var1)) do
    %Sonata.Expr.Call{name: "float4", arguments: [var1]}
  end
  @doc("implementation of / operator")
  def(float48div(var1, var2)) do
    %Sonata.Expr.Call{name: "float48div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(float48eq(var1, var2)) do
    %Sonata.Expr.Call{name: "float48eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(float48ge(var1, var2)) do
    %Sonata.Expr.Call{name: "float48ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(float48gt(var1, var2)) do
    %Sonata.Expr.Call{name: "float48gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(float48le(var1, var2)) do
    %Sonata.Expr.Call{name: "float48le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(float48lt(var1, var2)) do
    %Sonata.Expr.Call{name: "float48lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(float48mi(var1, var2)) do
    %Sonata.Expr.Call{name: "float48mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(float48mul(var1, var2)) do
    %Sonata.Expr.Call{name: "float48mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(float48ne(var1, var2)) do
    %Sonata.Expr.Call{name: "float48ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(float48pl(var1, var2)) do
    %Sonata.Expr.Call{name: "float48pl", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(float4_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "float4_accum", arguments: [var1, var2]}
  end
  @doc("implementation of @ operator")
  def(float4abs(var1)) do
    %Sonata.Expr.Call{name: "float4abs", arguments: [var1]}
  end
  @doc("implementation of / operator")
  def(float4div(var1, var2)) do
    %Sonata.Expr.Call{name: "float4div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(float4eq(var1, var2)) do
    %Sonata.Expr.Call{name: "float4eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(float4ge(var1, var2)) do
    %Sonata.Expr.Call{name: "float4ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(float4gt(var1, var2)) do
    %Sonata.Expr.Call{name: "float4gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(float4in(var1)) do
    %Sonata.Expr.Call{name: "float4in", arguments: [var1]}
  end
  @doc("larger of two")
  def(float4larger(var1, var2)) do
    %Sonata.Expr.Call{name: "float4larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(float4le(var1, var2)) do
    %Sonata.Expr.Call{name: "float4le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(float4lt(var1, var2)) do
    %Sonata.Expr.Call{name: "float4lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(float4mi(var1, var2)) do
    %Sonata.Expr.Call{name: "float4mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(float4mul(var1, var2)) do
    %Sonata.Expr.Call{name: "float4mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(float4ne(var1, var2)) do
    %Sonata.Expr.Call{name: "float4ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(float4out(var1)) do
    %Sonata.Expr.Call{name: "float4out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(float4pl(var1, var2)) do
    %Sonata.Expr.Call{name: "float4pl", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(float4recv(var1)) do
    %Sonata.Expr.Call{name: "float4recv", arguments: [var1]}
  end
  @doc("I/O")
  def(float4send(var1)) do
    %Sonata.Expr.Call{name: "float4send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(float4smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "float4smaller", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(float4um(var1)) do
    %Sonata.Expr.Call{name: "float4um", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(float4up(var1)) do
    %Sonata.Expr.Call{name: "float4up", arguments: [var1]}
  end
  @doc("convert int4 to float8")
  def(float8(var1)) do
    %Sonata.Expr.Call{name: "float8", arguments: [var1]}
  end
  @doc("implementation of / operator")
  def(float84div(var1, var2)) do
    %Sonata.Expr.Call{name: "float84div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(float84eq(var1, var2)) do
    %Sonata.Expr.Call{name: "float84eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(float84ge(var1, var2)) do
    %Sonata.Expr.Call{name: "float84ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(float84gt(var1, var2)) do
    %Sonata.Expr.Call{name: "float84gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(float84le(var1, var2)) do
    %Sonata.Expr.Call{name: "float84le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(float84lt(var1, var2)) do
    %Sonata.Expr.Call{name: "float84lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(float84mi(var1, var2)) do
    %Sonata.Expr.Call{name: "float84mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(float84mul(var1, var2)) do
    %Sonata.Expr.Call{name: "float84mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(float84ne(var1, var2)) do
    %Sonata.Expr.Call{name: "float84ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(float84pl(var1, var2)) do
    %Sonata.Expr.Call{name: "float84pl", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(float8_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "float8_accum", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(float8_avg(var1)) do
    %Sonata.Expr.Call{name: "float8_avg", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_corr(var1)) do
    %Sonata.Expr.Call{name: "float8_corr", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_covar_pop(var1)) do
    %Sonata.Expr.Call{name: "float8_covar_pop", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_covar_samp(var1)) do
    %Sonata.Expr.Call{name: "float8_covar_samp", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(float8_regr_accum(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "float8_regr_accum", arguments: [var1, var2, var3]}
  end
  @doc("aggregate final function")
  def(float8_regr_avgx(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_avgx", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_regr_avgy(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_avgy", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_regr_intercept(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_intercept", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_regr_r2(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_r2", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_regr_slope(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_slope", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_regr_sxx(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_sxx", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_regr_sxy(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_sxy", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_regr_syy(var1)) do
    %Sonata.Expr.Call{name: "float8_regr_syy", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_stddev_pop(var1)) do
    %Sonata.Expr.Call{name: "float8_stddev_pop", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_stddev_samp(var1)) do
    %Sonata.Expr.Call{name: "float8_stddev_samp", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_var_pop(var1)) do
    %Sonata.Expr.Call{name: "float8_var_pop", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(float8_var_samp(var1)) do
    %Sonata.Expr.Call{name: "float8_var_samp", arguments: [var1]}
  end
  @doc("implementation of @ operator")
  def(float8abs(var1)) do
    %Sonata.Expr.Call{name: "float8abs", arguments: [var1]}
  end
  @doc("implementation of / operator")
  def(float8div(var1, var2)) do
    %Sonata.Expr.Call{name: "float8div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(float8eq(var1, var2)) do
    %Sonata.Expr.Call{name: "float8eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(float8ge(var1, var2)) do
    %Sonata.Expr.Call{name: "float8ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(float8gt(var1, var2)) do
    %Sonata.Expr.Call{name: "float8gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(float8in(var1)) do
    %Sonata.Expr.Call{name: "float8in", arguments: [var1]}
  end
  @doc("larger of two")
  def(float8larger(var1, var2)) do
    %Sonata.Expr.Call{name: "float8larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(float8le(var1, var2)) do
    %Sonata.Expr.Call{name: "float8le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(float8lt(var1, var2)) do
    %Sonata.Expr.Call{name: "float8lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(float8mi(var1, var2)) do
    %Sonata.Expr.Call{name: "float8mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(float8mul(var1, var2)) do
    %Sonata.Expr.Call{name: "float8mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(float8ne(var1, var2)) do
    %Sonata.Expr.Call{name: "float8ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(float8out(var1)) do
    %Sonata.Expr.Call{name: "float8out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(float8pl(var1, var2)) do
    %Sonata.Expr.Call{name: "float8pl", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(float8recv(var1)) do
    %Sonata.Expr.Call{name: "float8recv", arguments: [var1]}
  end
  @doc("I/O")
  def(float8send(var1)) do
    %Sonata.Expr.Call{name: "float8send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(float8smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "float8smaller", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(float8um(var1)) do
    %Sonata.Expr.Call{name: "float8um", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(float8up(var1)) do
    %Sonata.Expr.Call{name: "float8up", arguments: [var1]}
  end
  @doc("largest integer <= value")
  def(floor(var1)) do
    %Sonata.Expr.Call{name: "floor", arguments: [var1]}
  end
  @doc("implementation of * operator")
  def(flt4_mul_cash(var1, var2)) do
    %Sonata.Expr.Call{name: "flt4_mul_cash", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(flt8_mul_cash(var1, var2)) do
    %Sonata.Expr.Call{name: "flt8_mul_cash", arguments: [var1, var2]}
  end
  @doc("(internal)")
  def(fmgr_c_validator(var1)) do
    %Sonata.Expr.Call{name: "fmgr_c_validator", arguments: [var1]}
  end
  @doc("(internal)")
  def(fmgr_internal_validator(var1)) do
    %Sonata.Expr.Call{name: "fmgr_internal_validator", arguments: [var1]}
  end
  @doc("(internal)")
  def(fmgr_sql_validator(var1)) do
    %Sonata.Expr.Call{name: "fmgr_sql_validator", arguments: [var1]}
  end
  @doc("format text message")
  def(format(var1, var2)) do
    %Sonata.Expr.Call{name: "format", arguments: [var1, var2]}
  end
  @doc("format a type oid and atttypmod to canonical SQL")
  def(format_type(var1, var2)) do
    %Sonata.Expr.Call{name: "format_type", arguments: [var1, var2]}
  end
  @doc("internal conversion function for GB18030 to UTF8")
  def(gb18030_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gb18030_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for GBK to UTF8")
  def(gbk_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gbk_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("non-persistent series generator")
  def(generate_series(var1, var2)) do
    %Sonata.Expr.Call{name: "generate_series", arguments: [var1, var2]}
  end
  @doc("array subscripts generator")
  def(generate_subscripts(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "generate_subscripts", arguments: [var1, var2, var3]}
  end
  @doc("get bit")
  def(get_bit(var1, var2)) do
    %Sonata.Expr.Call{name: "get_bit", arguments: [var1, var2]}
  end
  @doc("get byte")
  def(get_byte(var1, var2)) do
    %Sonata.Expr.Call{name: "get_byte", arguments: [var1, var2]}
  end
  @doc("get current tsearch configuration")
  def(get_current_ts_config()) do
    %Sonata.Expr.Call{name: "get_current_ts_config", arguments: []}
  end
  @doc("encoding name of current database")
  def(getdatabaseencoding()) do
    %Sonata.Expr.Call{name: "getdatabaseencoding", arguments: []}
  end
  @doc("deprecated, use current_user instead")
  def(getpgusername()) do
    %Sonata.Expr.Call{name: "getpgusername", arguments: []}
  end
  @doc("GIN tsvector support")
  def(gin_cmp_prefix(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "gin_cmp_prefix", arguments: [var1, var2, var3, var4]}
  end
  @doc("GIN tsvector support")
  def(gin_cmp_tslexeme(var1, var2)) do
    %Sonata.Expr.Call{name: "gin_cmp_tslexeme", arguments: [var1, var2]}
  end
  @doc("GIN support")
  def(gin_compare_jsonb(var1, var2)) do
    %Sonata.Expr.Call{name: "gin_compare_jsonb", arguments: [var1, var2]}
  end
  @doc("GIN support")
  def(gin_consistent_jsonb(var1, var2, var3, var4, var5, var6, var7, var8)) do
    %Sonata.Expr.Call{name: "gin_consistent_jsonb", arguments: [var1, var2, var3, var4, var5, var6, var7, var8]}
  end
  @doc("GIN support")
  def(gin_consistent_jsonb_path(var1, var2, var3, var4, var5, var6, var7, var8)) do
    %Sonata.Expr.Call{name: "gin_consistent_jsonb_path", arguments: [var1, var2, var3, var4, var5, var6, var7, var8]}
  end
  @doc("GIN support")
  def(gin_extract_jsonb(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gin_extract_jsonb", arguments: [var1, var2, var3]}
  end
  @doc("GIN support")
  def(gin_extract_jsonb_path(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gin_extract_jsonb_path", arguments: [var1, var2, var3]}
  end
  @doc("GIN support")
  def(gin_extract_jsonb_query(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "gin_extract_jsonb_query", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("GIN support")
  def(gin_extract_jsonb_query_path(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "gin_extract_jsonb_query_path", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("GIN tsvector support (obsolete)")
  def(gin_extract_tsquery(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gin_extract_tsquery", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GIN tsvector support (obsolete)")
  def(gin_extract_tsvector(var1, var2)) do
    %Sonata.Expr.Call{name: "gin_extract_tsvector", arguments: [var1, var2]}
  end
  @doc("GIN support")
  def(gin_triconsistent_jsonb(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "gin_triconsistent_jsonb", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("GIN support")
  def(gin_triconsistent_jsonb_path(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "gin_triconsistent_jsonb_path", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("GIN tsvector support (obsolete)")
  def(gin_tsquery_consistent(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "gin_tsquery_consistent", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("GIN tsvector support")
  def(gin_tsquery_triconsistent(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "gin_tsquery_triconsistent", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("GIN array support")
  def(ginarrayconsistent(var1, var2, var3, var4, var5, var6, var7, var8)) do
    %Sonata.Expr.Call{name: "ginarrayconsistent", arguments: [var1, var2, var3, var4, var5, var6, var7, var8]}
  end
  @doc("GIN array support (obsolete)")
  def(ginarrayextract(var1, var2)) do
    %Sonata.Expr.Call{name: "ginarrayextract", arguments: [var1, var2]}
  end
  @doc("GIN array support")
  def(ginarraytriconsistent(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "ginarraytriconsistent", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("gin(internal)")
  def(ginbeginscan(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "ginbeginscan", arguments: [var1, var2, var3]}
  end
  @doc("gin(internal)")
  def(ginbuild(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "ginbuild", arguments: [var1, var2, var3]}
  end
  @doc("gin(internal)")
  def(ginbuildempty(var1)) do
    %Sonata.Expr.Call{name: "ginbuildempty", arguments: [var1]}
  end
  @doc("gin(internal)")
  def(ginbulkdelete(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "ginbulkdelete", arguments: [var1, var2, var3, var4]}
  end
  @doc("gin(internal)")
  def(gincostestimate(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "gincostestimate", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("gin(internal)")
  def(ginendscan(var1)) do
    %Sonata.Expr.Call{name: "ginendscan", arguments: [var1]}
  end
  @doc("gin(internal)")
  def(gingetbitmap(var1, var2)) do
    %Sonata.Expr.Call{name: "gingetbitmap", arguments: [var1, var2]}
  end
  @doc("gin(internal)")
  def(gininsert(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "gininsert", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("gin(internal)")
  def(ginmarkpos(var1)) do
    %Sonata.Expr.Call{name: "ginmarkpos", arguments: [var1]}
  end
  @doc("gin(internal)")
  def(ginoptions(var1, var2)) do
    %Sonata.Expr.Call{name: "ginoptions", arguments: [var1, var2]}
  end
  @doc("GIN array support")
  def(ginqueryarrayextract(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "ginqueryarrayextract", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("gin(internal)")
  def(ginrescan(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "ginrescan", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("gin(internal)")
  def(ginrestrpos(var1)) do
    %Sonata.Expr.Call{name: "ginrestrpos", arguments: [var1]}
  end
  @doc("gin(internal)")
  def(ginvacuumcleanup(var1, var2)) do
    %Sonata.Expr.Call{name: "ginvacuumcleanup", arguments: [var1, var2]}
  end
  @doc("GiST support")
  def(gist_bbox_distance(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "gist_bbox_distance", arguments: [var1, var2, var3, var4]}
  end
  @doc("GiST support")
  def(gist_box_compress(var1)) do
    %Sonata.Expr.Call{name: "gist_box_compress", arguments: [var1]}
  end
  @doc("GiST support")
  def(gist_box_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gist_box_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GiST support")
  def(gist_box_decompress(var1)) do
    %Sonata.Expr.Call{name: "gist_box_decompress", arguments: [var1]}
  end
  @doc("GiST support")
  def(gist_box_fetch(var1)) do
    %Sonata.Expr.Call{name: "gist_box_fetch", arguments: [var1]}
  end
  @doc("GiST support")
  def(gist_box_penalty(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gist_box_penalty", arguments: [var1, var2, var3]}
  end
  @doc("GiST support")
  def(gist_box_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "gist_box_picksplit", arguments: [var1, var2]}
  end
  @doc("GiST support")
  def(gist_box_same(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gist_box_same", arguments: [var1, var2, var3]}
  end
  @doc("GiST support")
  def(gist_box_union(var1, var2)) do
    %Sonata.Expr.Call{name: "gist_box_union", arguments: [var1, var2]}
  end
  @doc("GiST support")
  def(gist_circle_compress(var1)) do
    %Sonata.Expr.Call{name: "gist_circle_compress", arguments: [var1]}
  end
  @doc("GiST support")
  def(gist_circle_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gist_circle_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GiST support")
  def(gist_point_compress(var1)) do
    %Sonata.Expr.Call{name: "gist_point_compress", arguments: [var1]}
  end
  @doc("GiST support")
  def(gist_point_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gist_point_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GiST support")
  def(gist_point_distance(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "gist_point_distance", arguments: [var1, var2, var3, var4]}
  end
  @doc("GiST support")
  def(gist_point_fetch(var1)) do
    %Sonata.Expr.Call{name: "gist_point_fetch", arguments: [var1]}
  end
  @doc("GiST support")
  def(gist_poly_compress(var1)) do
    %Sonata.Expr.Call{name: "gist_poly_compress", arguments: [var1]}
  end
  @doc("GiST support")
  def(gist_poly_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gist_poly_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("gist(internal)")
  def(gistbeginscan(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gistbeginscan", arguments: [var1, var2, var3]}
  end
  @doc("gist(internal)")
  def(gistbuild(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gistbuild", arguments: [var1, var2, var3]}
  end
  @doc("gist(internal)")
  def(gistbuildempty(var1)) do
    %Sonata.Expr.Call{name: "gistbuildempty", arguments: [var1]}
  end
  @doc("gist(internal)")
  def(gistbulkdelete(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "gistbulkdelete", arguments: [var1, var2, var3, var4]}
  end
  @doc("gist(internal)")
  def(gistcanreturn(var1, var2)) do
    %Sonata.Expr.Call{name: "gistcanreturn", arguments: [var1, var2]}
  end
  @doc("gist(internal)")
  def(gistcostestimate(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "gistcostestimate", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("gist(internal)")
  def(gistendscan(var1)) do
    %Sonata.Expr.Call{name: "gistendscan", arguments: [var1]}
  end
  @doc("gist(internal)")
  def(gistgetbitmap(var1, var2)) do
    %Sonata.Expr.Call{name: "gistgetbitmap", arguments: [var1, var2]}
  end
  @doc("gist(internal)")
  def(gistgettuple(var1, var2)) do
    %Sonata.Expr.Call{name: "gistgettuple", arguments: [var1, var2]}
  end
  @doc("gist(internal)")
  def(gistinsert(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "gistinsert", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("gist(internal)")
  def(gistmarkpos(var1)) do
    %Sonata.Expr.Call{name: "gistmarkpos", arguments: [var1]}
  end
  @doc("gist(internal)")
  def(gistoptions(var1, var2)) do
    %Sonata.Expr.Call{name: "gistoptions", arguments: [var1, var2]}
  end
  @doc("gist(internal)")
  def(gistrescan(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gistrescan", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("gist(internal)")
  def(gistrestrpos(var1)) do
    %Sonata.Expr.Call{name: "gistrestrpos", arguments: [var1]}
  end
  @doc("gist(internal)")
  def(gistvacuumcleanup(var1, var2)) do
    %Sonata.Expr.Call{name: "gistvacuumcleanup", arguments: [var1, var2]}
  end
  @doc("GiST tsquery support")
  def(gtsquery_compress(var1)) do
    %Sonata.Expr.Call{name: "gtsquery_compress", arguments: [var1]}
  end
  @doc("GiST tsquery support")
  def(gtsquery_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gtsquery_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GiST tsquery support")
  def(gtsquery_decompress(var1)) do
    %Sonata.Expr.Call{name: "gtsquery_decompress", arguments: [var1]}
  end
  @doc("GiST tsquery support")
  def(gtsquery_penalty(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gtsquery_penalty", arguments: [var1, var2, var3]}
  end
  @doc("GiST tsquery support")
  def(gtsquery_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "gtsquery_picksplit", arguments: [var1, var2]}
  end
  @doc("GiST tsquery support")
  def(gtsquery_same(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gtsquery_same", arguments: [var1, var2, var3]}
  end
  @doc("GiST tsquery support")
  def(gtsquery_union(var1, var2)) do
    %Sonata.Expr.Call{name: "gtsquery_union", arguments: [var1, var2]}
  end
  @doc("GiST tsvector support")
  def(gtsvector_compress(var1)) do
    %Sonata.Expr.Call{name: "gtsvector_compress", arguments: [var1]}
  end
  @doc("GiST tsvector support")
  def(gtsvector_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "gtsvector_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GiST tsvector support")
  def(gtsvector_decompress(var1)) do
    %Sonata.Expr.Call{name: "gtsvector_decompress", arguments: [var1]}
  end
  @doc("GiST tsvector support")
  def(gtsvector_penalty(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gtsvector_penalty", arguments: [var1, var2, var3]}
  end
  @doc("GiST tsvector support")
  def(gtsvector_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "gtsvector_picksplit", arguments: [var1, var2]}
  end
  @doc("GiST tsvector support")
  def(gtsvector_same(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "gtsvector_same", arguments: [var1, var2, var3]}
  end
  @doc("GiST tsvector support")
  def(gtsvector_union(var1, var2)) do
    %Sonata.Expr.Call{name: "gtsvector_union", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(gtsvectorin(var1)) do
    %Sonata.Expr.Call{name: "gtsvectorin", arguments: [var1]}
  end
  @doc("I/O")
  def(gtsvectorout(var1)) do
    %Sonata.Expr.Call{name: "gtsvectorout", arguments: [var1]}
  end
  @doc("user privilege on any column by user oid, rel name")
  def(has_any_column_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_any_column_privilege", arguments: [var1, var2, var3]}
  end
  @doc("user privilege on column by username, rel oid, col name")
  def(has_column_privilege(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "has_column_privilege", arguments: [var1, var2, var3, var4]}
  end
  @doc("user privilege on database by username, database name")
  def(has_database_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_database_privilege", arguments: [var1, var2, var3]}
  end
  @doc("user privilege on foreign data wrapper by username, foreign data wrapper oid")
  def(has_foreign_data_wrapper_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_foreign_data_wrapper_privilege", arguments: [var1, var2, var3]}
  end
  @doc("user privilege on function by user oid, function name")
  def(has_function_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_function_privilege", arguments: [var1, var2, var3]}
  end
  @doc("current user privilege on language by language name")
  def(has_language_privilege(var1, var2)) do
    %Sonata.Expr.Call{name: "has_language_privilege", arguments: [var1, var2]}
  end
  @doc("user privilege on schema by user oid, schema oid")
  def(has_schema_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_schema_privilege", arguments: [var1, var2, var3]}
  end
  @doc("user privilege on sequence by user oid, seq oid")
  def(has_sequence_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_sequence_privilege", arguments: [var1, var2, var3]}
  end
  @doc("user privilege on server by user oid, server oid")
  def(has_server_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_server_privilege", arguments: [var1, var2, var3]}
  end
  @doc("user privilege on relation by username, rel oid")
  def(has_table_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_table_privilege", arguments: [var1, var2, var3]}
  end
  @doc("user privilege on tablespace by username, tablespace oid")
  def(has_tablespace_privilege(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "has_tablespace_privilege", arguments: [var1, var2, var3]}
  end
  @doc("current user privilege on type by type name")
  def(has_type_privilege(var1, var2)) do
    %Sonata.Expr.Call{name: "has_type_privilege", arguments: [var1, var2]}
  end
  @doc("hash")
  def(hash_aclitem(var1)) do
    %Sonata.Expr.Call{name: "hash_aclitem", arguments: [var1]}
  end
  @doc("hash")
  def(hash_array(var1)) do
    %Sonata.Expr.Call{name: "hash_array", arguments: [var1]}
  end
  @doc("hash")
  def(hash_numeric(var1)) do
    %Sonata.Expr.Call{name: "hash_numeric", arguments: [var1]}
  end
  @doc("hash a range")
  def(hash_range(var1)) do
    %Sonata.Expr.Call{name: "hash_range", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashbeginscan(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "hashbeginscan", arguments: [var1, var2, var3]}
  end
  @doc("hash")
  def(hashbpchar(var1)) do
    %Sonata.Expr.Call{name: "hashbpchar", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashbuild(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "hashbuild", arguments: [var1, var2, var3]}
  end
  @doc("hash(internal)")
  def(hashbuildempty(var1)) do
    %Sonata.Expr.Call{name: "hashbuildempty", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashbulkdelete(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "hashbulkdelete", arguments: [var1, var2, var3, var4]}
  end
  @doc("hash")
  def(hashchar(var1)) do
    %Sonata.Expr.Call{name: "hashchar", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashcostestimate(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "hashcostestimate", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("hash(internal)")
  def(hashendscan(var1)) do
    %Sonata.Expr.Call{name: "hashendscan", arguments: [var1]}
  end
  @doc("hash")
  def(hashenum(var1)) do
    %Sonata.Expr.Call{name: "hashenum", arguments: [var1]}
  end
  @doc("hash")
  def(hashfloat4(var1)) do
    %Sonata.Expr.Call{name: "hashfloat4", arguments: [var1]}
  end
  @doc("hash")
  def(hashfloat8(var1)) do
    %Sonata.Expr.Call{name: "hashfloat8", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashgetbitmap(var1, var2)) do
    %Sonata.Expr.Call{name: "hashgetbitmap", arguments: [var1, var2]}
  end
  @doc("hash(internal)")
  def(hashgettuple(var1, var2)) do
    %Sonata.Expr.Call{name: "hashgettuple", arguments: [var1, var2]}
  end
  @doc("hash")
  def(hashinet(var1)) do
    %Sonata.Expr.Call{name: "hashinet", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashinsert(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "hashinsert", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("hash")
  def(hashint2(var1)) do
    %Sonata.Expr.Call{name: "hashint2", arguments: [var1]}
  end
  @doc("hash")
  def(hashint2vector(var1)) do
    %Sonata.Expr.Call{name: "hashint2vector", arguments: [var1]}
  end
  @doc("hash")
  def(hashint4(var1)) do
    %Sonata.Expr.Call{name: "hashint4", arguments: [var1]}
  end
  @doc("hash")
  def(hashint8(var1)) do
    %Sonata.Expr.Call{name: "hashint8", arguments: [var1]}
  end
  @doc("hash")
  def(hashmacaddr(var1)) do
    %Sonata.Expr.Call{name: "hashmacaddr", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashmarkpos(var1)) do
    %Sonata.Expr.Call{name: "hashmarkpos", arguments: [var1]}
  end
  @doc("hash")
  def(hashname(var1)) do
    %Sonata.Expr.Call{name: "hashname", arguments: [var1]}
  end
  @doc("hash")
  def(hashoid(var1)) do
    %Sonata.Expr.Call{name: "hashoid", arguments: [var1]}
  end
  @doc("hash")
  def(hashoidvector(var1)) do
    %Sonata.Expr.Call{name: "hashoidvector", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashoptions(var1, var2)) do
    %Sonata.Expr.Call{name: "hashoptions", arguments: [var1, var2]}
  end
  @doc("hash(internal)")
  def(hashrescan(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "hashrescan", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("hash(internal)")
  def(hashrestrpos(var1)) do
    %Sonata.Expr.Call{name: "hashrestrpos", arguments: [var1]}
  end
  @doc("hash")
  def(hashtext(var1)) do
    %Sonata.Expr.Call{name: "hashtext", arguments: [var1]}
  end
  @doc("hash(internal)")
  def(hashvacuumcleanup(var1, var2)) do
    %Sonata.Expr.Call{name: "hashvacuumcleanup", arguments: [var1, var2]}
  end
  @doc("hash")
  def(hashvarlena(var1)) do
    %Sonata.Expr.Call{name: "hashvarlena", arguments: [var1]}
  end
  @doc("box height")
  def(height(var1)) do
    %Sonata.Expr.Call{name: "height", arguments: [var1]}
  end
  @doc("show address octets only")
  def(host(var1)) do
    %Sonata.Expr.Call{name: "host", arguments: [var1]}
  end
  @doc("hostmask of address")
  def(hostmask(var1)) do
    %Sonata.Expr.Call{name: "hostmask", arguments: [var1]}
  end
  @doc("join selectivity of ILIKE")
  def(iclikejoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "iclikejoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of ILIKE")
  def(iclikesel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "iclikesel", arguments: [var1, var2, var3, var4]}
  end
  @doc("join selectivity of NOT ILIKE")
  def(icnlikejoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "icnlikejoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of NOT ILIKE")
  def(icnlikesel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "icnlikesel", arguments: [var1, var2, var3, var4]}
  end
  @doc("join selectivity of case-insensitive regex match")
  def(icregexeqjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "icregexeqjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of case-insensitive regex match")
  def(icregexeqsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "icregexeqsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("join selectivity of case-insensitive regex non-match")
  def(icregexnejoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "icregexnejoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of case-insensitive regex non-match")
  def(icregexnesel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "icregexnesel", arguments: [var1, var2, var3, var4]}
  end
  @doc("inet address of the client")
  def(inet_client_addr()) do
    %Sonata.Expr.Call{name: "inet_client_addr", arguments: []}
  end
  @doc("client's port number for this connection")
  def(inet_client_port()) do
    %Sonata.Expr.Call{name: "inet_client_port", arguments: []}
  end
  @doc("GiST support")
  def(inet_gist_compress(var1)) do
    %Sonata.Expr.Call{name: "inet_gist_compress", arguments: [var1]}
  end
  @doc("GiST support")
  def(inet_gist_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "inet_gist_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GiST support")
  def(inet_gist_decompress(var1)) do
    %Sonata.Expr.Call{name: "inet_gist_decompress", arguments: [var1]}
  end
  @doc("GiST support")
  def(inet_gist_fetch(var1)) do
    %Sonata.Expr.Call{name: "inet_gist_fetch", arguments: [var1]}
  end
  @doc("GiST support")
  def(inet_gist_penalty(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "inet_gist_penalty", arguments: [var1, var2, var3]}
  end
  @doc("GiST support")
  def(inet_gist_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "inet_gist_picksplit", arguments: [var1, var2]}
  end
  @doc("GiST support")
  def(inet_gist_same(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "inet_gist_same", arguments: [var1, var2, var3]}
  end
  @doc("GiST support")
  def(inet_gist_union(var1, var2)) do
    %Sonata.Expr.Call{name: "inet_gist_union", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(inet_in(var1)) do
    %Sonata.Expr.Call{name: "inet_in", arguments: [var1]}
  end
  @doc("the smallest network which includes both of the given networks")
  def(inet_merge(var1, var2)) do
    %Sonata.Expr.Call{name: "inet_merge", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(inet_out(var1)) do
    %Sonata.Expr.Call{name: "inet_out", arguments: [var1]}
  end
  @doc("I/O")
  def(inet_recv(var1)) do
    %Sonata.Expr.Call{name: "inet_recv", arguments: [var1]}
  end
  @doc("are the addresses from the same family?")
  def(inet_same_family(var1, var2)) do
    %Sonata.Expr.Call{name: "inet_same_family", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(inet_send(var1)) do
    %Sonata.Expr.Call{name: "inet_send", arguments: [var1]}
  end
  @doc("inet address of the server")
  def(inet_server_addr()) do
    %Sonata.Expr.Call{name: "inet_server_addr", arguments: []}
  end
  @doc("server's port number for this connection")
  def(inet_server_port()) do
    %Sonata.Expr.Call{name: "inet_server_port", arguments: []}
  end
  @doc("implementation of & operator")
  def(inetand(var1, var2)) do
    %Sonata.Expr.Call{name: "inetand", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(inetmi(var1, var2)) do
    %Sonata.Expr.Call{name: "inetmi", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(inetmi_int8(var1, var2)) do
    %Sonata.Expr.Call{name: "inetmi_int8", arguments: [var1, var2]}
  end
  @doc("implementation of ~ operator")
  def(inetnot(var1)) do
    %Sonata.Expr.Call{name: "inetnot", arguments: [var1]}
  end
  @doc("implementation of | operator")
  def(inetor(var1, var2)) do
    %Sonata.Expr.Call{name: "inetor", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(inetpl(var1, var2)) do
    %Sonata.Expr.Call{name: "inetpl", arguments: [var1, var2]}
  end
  @doc("capitalize each word")
  def(initcap(var1)) do
    %Sonata.Expr.Call{name: "initcap", arguments: [var1]}
  end
  @doc("convert int8 to int2")
  def(int2(var1)) do
    %Sonata.Expr.Call{name: "int2", arguments: [var1]}
  end
  @doc("implementation of / operator")
  def(int24div(var1, var2)) do
    %Sonata.Expr.Call{name: "int24div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int24eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int24eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int24ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int24ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int24gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int24gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int24le(var1, var2)) do
    %Sonata.Expr.Call{name: "int24le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int24lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int24lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int24mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int24mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int24mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int24mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int24ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int24ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(int24pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int24pl", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(int28div(var1, var2)) do
    %Sonata.Expr.Call{name: "int28div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int28eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int28eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int28ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int28ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int28gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int28gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int28le(var1, var2)) do
    %Sonata.Expr.Call{name: "int28le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int28lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int28lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int28mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int28mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int28mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int28mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int28ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int28ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(int28pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int28pl", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int2_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "int2_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int2_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "int2_accum_inv", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int2_avg_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "int2_avg_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int2_avg_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "int2_avg_accum_inv", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int2_mul_cash(var1, var2)) do
    %Sonata.Expr.Call{name: "int2_mul_cash", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int2_sum(var1, var2)) do
    %Sonata.Expr.Call{name: "int2_sum", arguments: [var1, var2]}
  end
  @doc("implementation of @ operator")
  def(int2abs(var1)) do
    %Sonata.Expr.Call{name: "int2abs", arguments: [var1]}
  end
  @doc("implementation of & operator")
  def(int2and(var1, var2)) do
    %Sonata.Expr.Call{name: "int2and", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(int2div(var1, var2)) do
    %Sonata.Expr.Call{name: "int2div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int2eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int2eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int2ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int2ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int2gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int2gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int2in(var1)) do
    %Sonata.Expr.Call{name: "int2in", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(int2int4_sum(var1)) do
    %Sonata.Expr.Call{name: "int2int4_sum", arguments: [var1]}
  end
  @doc("larger of two")
  def(int2larger(var1, var2)) do
    %Sonata.Expr.Call{name: "int2larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int2le(var1, var2)) do
    %Sonata.Expr.Call{name: "int2le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int2lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int2lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int2mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int2mi", arguments: [var1, var2]}
  end
  @doc("implementation of % operator")
  def(int2mod(var1, var2)) do
    %Sonata.Expr.Call{name: "int2mod", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int2mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int2mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int2ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int2ne", arguments: [var1, var2]}
  end
  @doc("implementation of ~ operator")
  def(int2not(var1)) do
    %Sonata.Expr.Call{name: "int2not", arguments: [var1]}
  end
  @doc("implementation of | operator")
  def(int2or(var1, var2)) do
    %Sonata.Expr.Call{name: "int2or", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int2out(var1)) do
    %Sonata.Expr.Call{name: "int2out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(int2pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int2pl", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int2recv(var1)) do
    %Sonata.Expr.Call{name: "int2recv", arguments: [var1]}
  end
  @doc("I/O")
  def(int2send(var1)) do
    %Sonata.Expr.Call{name: "int2send", arguments: [var1]}
  end
  @doc("implementation of << operator")
  def(int2shl(var1, var2)) do
    %Sonata.Expr.Call{name: "int2shl", arguments: [var1, var2]}
  end
  @doc("implementation of >> operator")
  def(int2shr(var1, var2)) do
    %Sonata.Expr.Call{name: "int2shr", arguments: [var1, var2]}
  end
  @doc("smaller of two")
  def(int2smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "int2smaller", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int2um(var1)) do
    %Sonata.Expr.Call{name: "int2um", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(int2up(var1)) do
    %Sonata.Expr.Call{name: "int2up", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(int2vectoreq(var1, var2)) do
    %Sonata.Expr.Call{name: "int2vectoreq", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int2vectorin(var1)) do
    %Sonata.Expr.Call{name: "int2vectorin", arguments: [var1]}
  end
  @doc("I/O")
  def(int2vectorout(var1)) do
    %Sonata.Expr.Call{name: "int2vectorout", arguments: [var1]}
  end
  @doc("I/O")
  def(int2vectorrecv(var1)) do
    %Sonata.Expr.Call{name: "int2vectorrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(int2vectorsend(var1)) do
    %Sonata.Expr.Call{name: "int2vectorsend", arguments: [var1]}
  end
  @doc("implementation of # operator")
  def(int2xor(var1, var2)) do
    %Sonata.Expr.Call{name: "int2xor", arguments: [var1, var2]}
  end
  @doc("convert boolean to int4")
  def(int4(var1)) do
    %Sonata.Expr.Call{name: "int4", arguments: [var1]}
  end
  @doc("implementation of / operator")
  def(int42div(var1, var2)) do
    %Sonata.Expr.Call{name: "int42div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int42eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int42eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int42ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int42ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int42gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int42gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int42le(var1, var2)) do
    %Sonata.Expr.Call{name: "int42le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int42lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int42lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int42mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int42mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int42mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int42mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int42ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int42ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(int42pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int42pl", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(int48div(var1, var2)) do
    %Sonata.Expr.Call{name: "int48div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int48eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int48eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int48ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int48ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int48gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int48gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int48le(var1, var2)) do
    %Sonata.Expr.Call{name: "int48le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int48lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int48lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int48mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int48mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int48mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int48mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int48ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int48ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(int48pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int48pl", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int4_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "int4_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int4_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "int4_accum_inv", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int4_avg_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "int4_avg_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int4_avg_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "int4_avg_accum_inv", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int4_mul_cash(var1, var2)) do
    %Sonata.Expr.Call{name: "int4_mul_cash", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int4_sum(var1, var2)) do
    %Sonata.Expr.Call{name: "int4_sum", arguments: [var1, var2]}
  end
  @doc("implementation of @ operator")
  def(int4abs(var1)) do
    %Sonata.Expr.Call{name: "int4abs", arguments: [var1]}
  end
  @doc("implementation of & operator")
  def(int4and(var1, var2)) do
    %Sonata.Expr.Call{name: "int4and", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(int4div(var1, var2)) do
    %Sonata.Expr.Call{name: "int4div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int4eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int4eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int4ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int4ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int4gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int4gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int4in(var1)) do
    %Sonata.Expr.Call{name: "int4in", arguments: [var1]}
  end
  @doc("increment")
  def(int4inc(var1)) do
    %Sonata.Expr.Call{name: "int4inc", arguments: [var1]}
  end
  @doc("larger of two")
  def(int4larger(var1, var2)) do
    %Sonata.Expr.Call{name: "int4larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int4le(var1, var2)) do
    %Sonata.Expr.Call{name: "int4le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int4lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int4lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int4mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int4mi", arguments: [var1, var2]}
  end
  @doc("implementation of % operator")
  def(int4mod(var1, var2)) do
    %Sonata.Expr.Call{name: "int4mod", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int4mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int4mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int4ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int4ne", arguments: [var1, var2]}
  end
  @doc("implementation of ~ operator")
  def(int4not(var1)) do
    %Sonata.Expr.Call{name: "int4not", arguments: [var1]}
  end
  @doc("implementation of | operator")
  def(int4or(var1, var2)) do
    %Sonata.Expr.Call{name: "int4or", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int4out(var1)) do
    %Sonata.Expr.Call{name: "int4out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(int4pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int4pl", arguments: [var1, var2]}
  end
  @doc("int4range constructor")
  def(int4range(var1, var2)) do
    %Sonata.Expr.Call{name: "int4range", arguments: [var1, var2]}
  end
  @doc("convert an int4 range to canonical form")
  def(int4range_canonical(var1)) do
    %Sonata.Expr.Call{name: "int4range_canonical", arguments: [var1]}
  end
  @doc("float8 difference of two int4 values")
  def(int4range_subdiff(var1, var2)) do
    %Sonata.Expr.Call{name: "int4range_subdiff", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int4recv(var1)) do
    %Sonata.Expr.Call{name: "int4recv", arguments: [var1]}
  end
  @doc("I/O")
  def(int4send(var1)) do
    %Sonata.Expr.Call{name: "int4send", arguments: [var1]}
  end
  @doc("implementation of << operator")
  def(int4shl(var1, var2)) do
    %Sonata.Expr.Call{name: "int4shl", arguments: [var1, var2]}
  end
  @doc("implementation of >> operator")
  def(int4shr(var1, var2)) do
    %Sonata.Expr.Call{name: "int4shr", arguments: [var1, var2]}
  end
  @doc("smaller of two")
  def(int4smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "int4smaller", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int4um(var1)) do
    %Sonata.Expr.Call{name: "int4um", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(int4up(var1)) do
    %Sonata.Expr.Call{name: "int4up", arguments: [var1]}
  end
  @doc("implementation of # operator")
  def(int4xor(var1, var2)) do
    %Sonata.Expr.Call{name: "int4xor", arguments: [var1, var2]}
  end
  @doc("convert numeric to int8")
  def(int8(var1)) do
    %Sonata.Expr.Call{name: "int8", arguments: [var1]}
  end
  @doc("implementation of / operator")
  def(int82div(var1, var2)) do
    %Sonata.Expr.Call{name: "int82div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int82eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int82eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int82ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int82ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int82gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int82gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int82le(var1, var2)) do
    %Sonata.Expr.Call{name: "int82le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int82lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int82lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int82mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int82mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int82mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int82mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int82ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int82ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(int82pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int82pl", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(int84div(var1, var2)) do
    %Sonata.Expr.Call{name: "int84div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int84eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int84eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int84ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int84ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int84gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int84gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int84le(var1, var2)) do
    %Sonata.Expr.Call{name: "int84le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int84lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int84lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int84mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int84mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int84mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int84mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int84ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int84ne", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(int84pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int84pl", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int8_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "int8_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int8_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "int8_accum_inv", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(int8_avg(var1)) do
    %Sonata.Expr.Call{name: "int8_avg", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(int8_avg_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "int8_avg_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int8_avg_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "int8_avg_accum_inv", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int8_sum(var1, var2)) do
    %Sonata.Expr.Call{name: "int8_sum", arguments: [var1, var2]}
  end
  @doc("implementation of @ operator")
  def(int8abs(var1)) do
    %Sonata.Expr.Call{name: "int8abs", arguments: [var1]}
  end
  @doc("implementation of & operator")
  def(int8and(var1, var2)) do
    %Sonata.Expr.Call{name: "int8and", arguments: [var1, var2]}
  end
  @doc("decrement")
  def(int8dec(var1)) do
    %Sonata.Expr.Call{name: "int8dec", arguments: [var1]}
  end
  @doc("decrement, ignores second argument")
  def(int8dec_any(var1, var2)) do
    %Sonata.Expr.Call{name: "int8dec_any", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(int8div(var1, var2)) do
    %Sonata.Expr.Call{name: "int8div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(int8eq(var1, var2)) do
    %Sonata.Expr.Call{name: "int8eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(int8ge(var1, var2)) do
    %Sonata.Expr.Call{name: "int8ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(int8gt(var1, var2)) do
    %Sonata.Expr.Call{name: "int8gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int8in(var1)) do
    %Sonata.Expr.Call{name: "int8in", arguments: [var1]}
  end
  @doc("increment")
  def(int8inc(var1)) do
    %Sonata.Expr.Call{name: "int8inc", arguments: [var1]}
  end
  @doc("increment, ignores second argument")
  def(int8inc_any(var1, var2)) do
    %Sonata.Expr.Call{name: "int8inc_any", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(int8inc_float8_float8(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "int8inc_float8_float8", arguments: [var1, var2, var3]}
  end
  @doc("larger of two")
  def(int8larger(var1, var2)) do
    %Sonata.Expr.Call{name: "int8larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(int8le(var1, var2)) do
    %Sonata.Expr.Call{name: "int8le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(int8lt(var1, var2)) do
    %Sonata.Expr.Call{name: "int8lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int8mi(var1, var2)) do
    %Sonata.Expr.Call{name: "int8mi", arguments: [var1, var2]}
  end
  @doc("implementation of % operator")
  def(int8mod(var1, var2)) do
    %Sonata.Expr.Call{name: "int8mod", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(int8mul(var1, var2)) do
    %Sonata.Expr.Call{name: "int8mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(int8ne(var1, var2)) do
    %Sonata.Expr.Call{name: "int8ne", arguments: [var1, var2]}
  end
  @doc("implementation of ~ operator")
  def(int8not(var1)) do
    %Sonata.Expr.Call{name: "int8not", arguments: [var1]}
  end
  @doc("implementation of | operator")
  def(int8or(var1, var2)) do
    %Sonata.Expr.Call{name: "int8or", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int8out(var1)) do
    %Sonata.Expr.Call{name: "int8out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(int8pl(var1, var2)) do
    %Sonata.Expr.Call{name: "int8pl", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(int8pl_inet(var1, var2)) do
    %Sonata.Expr.Call{name: "int8pl_inet", arguments: [var1, var2]}
  end
  @doc("int8range constructor")
  def(int8range(var1, var2)) do
    %Sonata.Expr.Call{name: "int8range", arguments: [var1, var2]}
  end
  @doc("convert an int8 range to canonical form")
  def(int8range_canonical(var1)) do
    %Sonata.Expr.Call{name: "int8range_canonical", arguments: [var1]}
  end
  @doc("float8 difference of two int8 values")
  def(int8range_subdiff(var1, var2)) do
    %Sonata.Expr.Call{name: "int8range_subdiff", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(int8recv(var1)) do
    %Sonata.Expr.Call{name: "int8recv", arguments: [var1]}
  end
  @doc("I/O")
  def(int8send(var1)) do
    %Sonata.Expr.Call{name: "int8send", arguments: [var1]}
  end
  @doc("implementation of << operator")
  def(int8shl(var1, var2)) do
    %Sonata.Expr.Call{name: "int8shl", arguments: [var1, var2]}
  end
  @doc("implementation of >> operator")
  def(int8shr(var1, var2)) do
    %Sonata.Expr.Call{name: "int8shr", arguments: [var1, var2]}
  end
  @doc("smaller of two")
  def(int8smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "int8smaller", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(int8um(var1)) do
    %Sonata.Expr.Call{name: "int8um", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(int8up(var1)) do
    %Sonata.Expr.Call{name: "int8up", arguments: [var1]}
  end
  @doc("implementation of # operator")
  def(int8xor(var1, var2)) do
    %Sonata.Expr.Call{name: "int8xor", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(integer_pl_date(var1, var2)) do
    %Sonata.Expr.Call{name: "integer_pl_date", arguments: [var1, var2]}
  end
  @doc("implementation of ?# operator")
  def(inter_lb(var1, var2)) do
    %Sonata.Expr.Call{name: "inter_lb", arguments: [var1, var2]}
  end
  @doc("implementation of ?# operator")
  def(inter_sb(var1, var2)) do
    %Sonata.Expr.Call{name: "inter_sb", arguments: [var1, var2]}
  end
  @doc("implementation of ?# operator")
  def(inter_sl(var1, var2)) do
    %Sonata.Expr.Call{name: "inter_sl", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(internal_in(var1)) do
    %Sonata.Expr.Call{name: "internal_in", arguments: [var1]}
  end
  @doc("I/O")
  def(internal_out(var1)) do
    %Sonata.Expr.Call{name: "internal_out", arguments: [var1]}
  end
  @doc("convert reltime to interval")
  def(interval(var1)) do
    %Sonata.Expr.Call{name: "interval", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(interval_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(interval_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_accum_inv", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(interval_avg(var1)) do
    %Sonata.Expr.Call{name: "interval_avg", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(interval_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(interval_div(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_div", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(interval_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(interval_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(interval_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_gt", arguments: [var1, var2]}
  end
  @doc("hash")
  def(interval_hash(var1)) do
    %Sonata.Expr.Call{name: "interval_hash", arguments: [var1]}
  end
  @doc("I/O")
  def(interval_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "interval_in", arguments: [var1, var2, var3]}
  end
  @doc("larger of two")
  def(interval_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(interval_le(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(interval_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(interval_mi(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_mi", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(interval_mul(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(interval_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(interval_out(var1)) do
    %Sonata.Expr.Call{name: "interval_out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(interval_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_pl", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(interval_pl_date(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_pl_date", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(interval_pl_time(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_pl_time", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(interval_pl_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_pl_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(interval_pl_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_pl_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(interval_pl_timetz(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_pl_timetz", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(interval_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "interval_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(interval_send(var1)) do
    %Sonata.Expr.Call{name: "interval_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(interval_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "interval_smaller", arguments: [var1, var2]}
  end
  @doc("transform an interval length coercion")
  def(interval_transform(var1)) do
    %Sonata.Expr.Call{name: "interval_transform", arguments: [var1]}
  end
  @doc("implementation of - operator")
  def(interval_um(var1)) do
    %Sonata.Expr.Call{name: "interval_um", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(intervaltypmodin(var1)) do
    %Sonata.Expr.Call{name: "intervaltypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(intervaltypmodout(var1)) do
    %Sonata.Expr.Call{name: "intervaltypmodout", arguments: [var1]}
  end
  @doc("implementation of <?> operator")
  def(intinterval(var1, var2)) do
    %Sonata.Expr.Call{name: "intinterval", arguments: [var1, var2]}
  end
  @doc("path closed?")
  def(isclosed(var1)) do
    %Sonata.Expr.Call{name: "isclosed", arguments: [var1]}
  end
  @doc("is the range empty?")
  def(isempty(var1)) do
    %Sonata.Expr.Call{name: "isempty", arguments: [var1]}
  end
  @doc("finite timestamp?")
  def(isfinite(var1)) do
    %Sonata.Expr.Call{name: "isfinite", arguments: [var1]}
  end
  @doc("horizontally aligned")
  def(ishorizontal(var1, var2)) do
    %Sonata.Expr.Call{name: "ishorizontal", arguments: [var1, var2]}
  end
  @doc("internal conversion function for LATIN1 to UTF8")
  def(iso8859_1_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "iso8859_1_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for ISO-8859-8 to UTF8")
  def(iso8859_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "iso8859_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for ISO-8859-5 to KOI8R")
  def(iso_to_koi8r(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "iso_to_koi8r", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for ISO-8859-5 to MULE_INTERNAL")
  def(iso_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "iso_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for ISO-8859-5 to WIN1251")
  def(iso_to_win1251(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "iso_to_win1251", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for ISO-8859-5 to WIN866")
  def(iso_to_win866(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "iso_to_win866", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("path open?")
  def(isopen(var1)) do
    %Sonata.Expr.Call{name: "isopen", arguments: [var1]}
  end
  @doc("parallel")
  def(isparallel(var1, var2)) do
    %Sonata.Expr.Call{name: "isparallel", arguments: [var1, var2]}
  end
  @doc("perpendicular")
  def(isperp(var1, var2)) do
    %Sonata.Expr.Call{name: "isperp", arguments: [var1, var2]}
  end
  @doc("vertically aligned")
  def(isvertical(var1, var2)) do
    %Sonata.Expr.Call{name: "isvertical", arguments: [var1, var2]}
  end
  @doc("internal conversion function for JOHAB to UTF8")
  def(johab_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "johab_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("aggregate input into json")
  def(json_agg(var1)) do
    %Sonata.Expr.Call{name: "json_agg", arguments: [var1]}
  end
  @doc("json aggregate final function")
  def(json_agg_finalfn(var1)) do
    %Sonata.Expr.Call{name: "json_agg_finalfn", arguments: [var1]}
  end
  @doc("json aggregate transition function")
  def(json_agg_transfn(var1, var2)) do
    %Sonata.Expr.Call{name: "json_agg_transfn", arguments: [var1, var2]}
  end
  @doc("implementation of -> operator")
  def(json_array_element(var1, var2)) do
    %Sonata.Expr.Call{name: "json_array_element", arguments: [var1, var2]}
  end
  @doc("implementation of ->> operator")
  def(json_array_element_text(var1, var2)) do
    %Sonata.Expr.Call{name: "json_array_element_text", arguments: [var1, var2]}
  end
  @doc("key value pairs of a json object")
  def(json_array_elements(var1)) do
    %Sonata.Expr.Call{name: "json_array_elements", arguments: [var1]}
  end
  @doc("elements of json array")
  def(json_array_elements_text(var1)) do
    %Sonata.Expr.Call{name: "json_array_elements_text", arguments: [var1]}
  end
  @doc("length of json array")
  def(json_array_length(var1)) do
    %Sonata.Expr.Call{name: "json_array_length", arguments: [var1]}
  end
  @doc("build an empty json array")
  def(json_build_array()) do
    %Sonata.Expr.Call{name: "json_build_array", arguments: []}
  end
  @doc("build an empty json object")
  def(json_build_object()) do
    %Sonata.Expr.Call{name: "json_build_object", arguments: []}
  end
  @doc("key value pairs of a json object")
  def(json_each(var1)) do
    %Sonata.Expr.Call{name: "json_each", arguments: [var1]}
  end
  @doc("key value pairs of a json object")
  def(json_each_text(var1)) do
    %Sonata.Expr.Call{name: "json_each_text", arguments: [var1]}
  end
  @doc("get value from json with path elements")
  def(json_extract_path(var1, var2)) do
    %Sonata.Expr.Call{name: "json_extract_path", arguments: [var1, var2]}
  end
  @doc("get value from json as text with path elements")
  def(json_extract_path_text(var1, var2)) do
    %Sonata.Expr.Call{name: "json_extract_path_text", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(json_in(var1)) do
    %Sonata.Expr.Call{name: "json_in", arguments: [var1]}
  end
  @doc("map text array of key value pairs to json object")
  def(json_object(var1)) do
    %Sonata.Expr.Call{name: "json_object", arguments: [var1]}
  end
  @doc("aggregate input into a json object")
  def(json_object_agg(var1, var2)) do
    %Sonata.Expr.Call{name: "json_object_agg", arguments: [var1, var2]}
  end
  @doc("json object aggregate final function")
  def(json_object_agg_finalfn(var1)) do
    %Sonata.Expr.Call{name: "json_object_agg_finalfn", arguments: [var1]}
  end
  @doc("json object aggregate transition function")
  def(json_object_agg_transfn(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "json_object_agg_transfn", arguments: [var1, var2, var3]}
  end
  @doc("implementation of -> operator")
  def(json_object_field(var1, var2)) do
    %Sonata.Expr.Call{name: "json_object_field", arguments: [var1, var2]}
  end
  @doc("implementation of ->> operator")
  def(json_object_field_text(var1, var2)) do
    %Sonata.Expr.Call{name: "json_object_field_text", arguments: [var1, var2]}
  end
  @doc("get json object keys")
  def(json_object_keys(var1)) do
    %Sonata.Expr.Call{name: "json_object_keys", arguments: [var1]}
  end
  @doc("I/O")
  def(json_out(var1)) do
    %Sonata.Expr.Call{name: "json_out", arguments: [var1]}
  end
  @doc("get record fields from a json object")
  def(json_populate_record(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "json_populate_record", arguments: [var1, var2, var3]}
  end
  @doc("get set of records with fields from a json array of objects")
  def(json_populate_recordset(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "json_populate_recordset", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(json_recv(var1)) do
    %Sonata.Expr.Call{name: "json_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(json_send(var1)) do
    %Sonata.Expr.Call{name: "json_send", arguments: [var1]}
  end
  @doc("remove object fields with null values from json")
  def(json_strip_nulls(var1)) do
    %Sonata.Expr.Call{name: "json_strip_nulls", arguments: [var1]}
  end
  @doc("get record fields from a json object")
  def(json_to_record(var1)) do
    %Sonata.Expr.Call{name: "json_to_record", arguments: [var1]}
  end
  @doc("get set of records with fields from a json array of objects")
  def(json_to_recordset(var1)) do
    %Sonata.Expr.Call{name: "json_to_recordset", arguments: [var1]}
  end
  @doc("get the type of a json value")
  def(json_typeof(var1)) do
    %Sonata.Expr.Call{name: "json_typeof", arguments: [var1]}
  end
  @doc("aggregate input into jsonb")
  def(jsonb_agg(var1)) do
    %Sonata.Expr.Call{name: "jsonb_agg", arguments: [var1]}
  end
  @doc("jsonb aggregate final function")
  def(jsonb_agg_finalfn(var1)) do
    %Sonata.Expr.Call{name: "jsonb_agg_finalfn", arguments: [var1]}
  end
  @doc("jsonb aggregate transition function")
  def(jsonb_agg_transfn(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_agg_transfn", arguments: [var1, var2]}
  end
  @doc("implementation of -> operator")
  def(jsonb_array_element(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_array_element", arguments: [var1, var2]}
  end
  @doc("implementation of ->> operator")
  def(jsonb_array_element_text(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_array_element_text", arguments: [var1, var2]}
  end
  @doc("elements of a jsonb array")
  def(jsonb_array_elements(var1)) do
    %Sonata.Expr.Call{name: "jsonb_array_elements", arguments: [var1]}
  end
  @doc("elements of jsonb array")
  def(jsonb_array_elements_text(var1)) do
    %Sonata.Expr.Call{name: "jsonb_array_elements_text", arguments: [var1]}
  end
  @doc("length of jsonb array")
  def(jsonb_array_length(var1)) do
    %Sonata.Expr.Call{name: "jsonb_array_length", arguments: [var1]}
  end
  @doc("build an empty jsonb array")
  def(jsonb_build_array()) do
    %Sonata.Expr.Call{name: "jsonb_build_array", arguments: []}
  end
  @doc("build a jsonb object from pairwise key/value inputs")
  def(jsonb_build_object(var1)) do
    %Sonata.Expr.Call{name: "jsonb_build_object", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(jsonb_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of || operator")
  def(jsonb_concat(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_concat", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(jsonb_contained(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_contained", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(jsonb_contains(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_contains", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(jsonb_delete(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_delete", arguments: [var1, var2]}
  end
  @doc("implementation of #- operator")
  def(jsonb_delete_path(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_delete_path", arguments: [var1, var2]}
  end
  @doc("key value pairs of a jsonb object")
  def(jsonb_each(var1)) do
    %Sonata.Expr.Call{name: "jsonb_each", arguments: [var1]}
  end
  @doc("key value pairs of a jsonb object")
  def(jsonb_each_text(var1)) do
    %Sonata.Expr.Call{name: "jsonb_each_text", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(jsonb_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_eq", arguments: [var1, var2]}
  end
  @doc("implementation of ? operator")
  def(jsonb_exists(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_exists", arguments: [var1, var2]}
  end
  @doc("implementation of ?& operator")
  def(jsonb_exists_all(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_exists_all", arguments: [var1, var2]}
  end
  @doc("implementation of ?| operator")
  def(jsonb_exists_any(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_exists_any", arguments: [var1, var2]}
  end
  @doc("get value from jsonb with path elements")
  def(jsonb_extract_path(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_extract_path", arguments: [var1, var2]}
  end
  @doc("get value from jsonb as text with path elements")
  def(jsonb_extract_path_text(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_extract_path_text", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(jsonb_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(jsonb_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_gt", arguments: [var1, var2]}
  end
  @doc("hash")
  def(jsonb_hash(var1)) do
    %Sonata.Expr.Call{name: "jsonb_hash", arguments: [var1]}
  end
  @doc("I/O")
  def(jsonb_in(var1)) do
    %Sonata.Expr.Call{name: "jsonb_in", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(jsonb_le(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(jsonb_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(jsonb_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_ne", arguments: [var1, var2]}
  end
  @doc("map text array of key value pairs to jsonb object")
  def(jsonb_object(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_object", arguments: [var1, var2]}
  end
  @doc("aggregate inputs into jsonb object")
  def(jsonb_object_agg(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_object_agg", arguments: [var1, var2]}
  end
  @doc("jsonb object aggregate final function")
  def(jsonb_object_agg_finalfn(var1)) do
    %Sonata.Expr.Call{name: "jsonb_object_agg_finalfn", arguments: [var1]}
  end
  @doc("jsonb object aggregate transition function")
  def(jsonb_object_agg_transfn(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "jsonb_object_agg_transfn", arguments: [var1, var2, var3]}
  end
  @doc("implementation of -> operator")
  def(jsonb_object_field(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_object_field", arguments: [var1, var2]}
  end
  @doc("implementation of ->> operator")
  def(jsonb_object_field_text(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_object_field_text", arguments: [var1, var2]}
  end
  @doc("get jsonb object keys")
  def(jsonb_object_keys(var1)) do
    %Sonata.Expr.Call{name: "jsonb_object_keys", arguments: [var1]}
  end
  @doc("I/O")
  def(jsonb_out(var1)) do
    %Sonata.Expr.Call{name: "jsonb_out", arguments: [var1]}
  end
  @doc("get record fields from a jsonb object")
  def(jsonb_populate_record(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_populate_record", arguments: [var1, var2]}
  end
  @doc("get set of records with fields from a jsonb array of objects")
  def(jsonb_populate_recordset(var1, var2)) do
    %Sonata.Expr.Call{name: "jsonb_populate_recordset", arguments: [var1, var2]}
  end
  @doc("Indented text from jsonb")
  def(jsonb_pretty(var1)) do
    %Sonata.Expr.Call{name: "jsonb_pretty", arguments: [var1]}
  end
  @doc("I/O")
  def(jsonb_recv(var1)) do
    %Sonata.Expr.Call{name: "jsonb_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(jsonb_send(var1)) do
    %Sonata.Expr.Call{name: "jsonb_send", arguments: [var1]}
  end
  @doc("Set part of a jsonb")
  def(jsonb_set(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "jsonb_set", arguments: [var1, var2, var3, var4]}
  end
  @doc("remove object fields with null values from jsonb")
  def(jsonb_strip_nulls(var1)) do
    %Sonata.Expr.Call{name: "jsonb_strip_nulls", arguments: [var1]}
  end
  @doc("get record fields from a jsonb object")
  def(jsonb_to_record(var1)) do
    %Sonata.Expr.Call{name: "jsonb_to_record", arguments: [var1]}
  end
  @doc("get set of records with fields from a jsonb array of objects")
  def(jsonb_to_recordset(var1)) do
    %Sonata.Expr.Call{name: "jsonb_to_recordset", arguments: [var1]}
  end
  @doc("get the type of a jsonb value")
  def(jsonb_typeof(var1)) do
    %Sonata.Expr.Call{name: "jsonb_typeof", arguments: [var1]}
  end
  @doc("promote groups of 30 days to numbers of months")
  def(justify_days(var1)) do
    %Sonata.Expr.Call{name: "justify_days", arguments: [var1]}
  end
  @doc("promote groups of 24 hours to numbers of days")
  def(justify_hours(var1)) do
    %Sonata.Expr.Call{name: "justify_hours", arguments: [var1]}
  end
  @doc("promote groups of 24 hours to numbers of days and promote groups of 30 days to numbers of months")
  def(justify_interval(var1)) do
    %Sonata.Expr.Call{name: "justify_interval", arguments: [var1]}
  end
  @doc("internal conversion function for KOI8R to ISO-8859-5")
  def(koi8r_to_iso(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "koi8r_to_iso", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for KOI8R to MULE_INTERNAL")
  def(koi8r_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "koi8r_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for KOI8R to UTF8")
  def(koi8r_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "koi8r_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for KOI8R to WIN1251")
  def(koi8r_to_win1251(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "koi8r_to_win1251", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for KOI8R to WIN866")
  def(koi8r_to_win866(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "koi8r_to_win866", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for KOI8U to UTF8")
  def(koi8u_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "koi8u_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("fetch the Nth preceding row value with default")
  def(lag(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "lag", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(language_handler_in(var1)) do
    %Sonata.Expr.Call{name: "language_handler_in", arguments: [var1]}
  end
  @doc("I/O")
  def(language_handler_out(var1)) do
    %Sonata.Expr.Call{name: "language_handler_out", arguments: [var1]}
  end
  @doc("fetch the last row value")
  def(last_value(var1)) do
    %Sonata.Expr.Call{name: "last_value", arguments: [var1]}
  end
  @doc("current value from last used sequence")
  def(lastval()) do
    %Sonata.Expr.Call{name: "lastval", arguments: []}
  end
  @doc("internal conversion function for LATIN1 to MULE_INTERNAL")
  def(latin1_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "latin1_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for LATIN2 to MULE_INTERNAL")
  def(latin2_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "latin2_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for LATIN2 to WIN1250")
  def(latin2_to_win1250(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "latin2_to_win1250", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for LATIN3 to MULE_INTERNAL")
  def(latin3_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "latin3_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for LATIN4 to MULE_INTERNAL")
  def(latin4_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "latin4_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("fetch the Nth following row value")
  def(lead(var1, var2)) do
    %Sonata.Expr.Call{name: "lead", arguments: [var1, var2]}
  end
  @doc("extract the first n characters")
  def(left(var1, var2)) do
    %Sonata.Expr.Call{name: "left", arguments: [var1, var2]}
  end
  @doc("distance between endpoints")
  def(length(var1)) do
    %Sonata.Expr.Call{name: "length", arguments: [var1]}
  end
  @doc("convert LIKE pattern to use backslash escapes")
  def(like_escape(var1, var2)) do
    %Sonata.Expr.Call{name: "like_escape", arguments: [var1, var2]}
  end
  @doc("join selectivity of LIKE")
  def(likejoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "likejoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of LIKE")
  def(likesel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "likesel", arguments: [var1, var2, var3, var4]}
  end
  @doc("construct line from points")
  def(line(var1, var2)) do
    %Sonata.Expr.Call{name: "line", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(line_distance(var1, var2)) do
    %Sonata.Expr.Call{name: "line_distance", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(line_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "line_eq", arguments: [var1, var2]}
  end
  @doc("implementation of ?- operator")
  def(line_horizontal(var1)) do
    %Sonata.Expr.Call{name: "line_horizontal", arguments: [var1]}
  end
  @doc("I/O")
  def(line_in(var1)) do
    %Sonata.Expr.Call{name: "line_in", arguments: [var1]}
  end
  @doc("implementation of # operator")
  def(line_interpt(var1, var2)) do
    %Sonata.Expr.Call{name: "line_interpt", arguments: [var1, var2]}
  end
  @doc("implementation of ?# operator")
  def(line_intersect(var1, var2)) do
    %Sonata.Expr.Call{name: "line_intersect", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(line_out(var1)) do
    %Sonata.Expr.Call{name: "line_out", arguments: [var1]}
  end
  @doc("implementation of ?|| operator")
  def(line_parallel(var1, var2)) do
    %Sonata.Expr.Call{name: "line_parallel", arguments: [var1, var2]}
  end
  @doc("implementation of ?-| operator")
  def(line_perp(var1, var2)) do
    %Sonata.Expr.Call{name: "line_perp", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(line_recv(var1)) do
    %Sonata.Expr.Call{name: "line_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(line_send(var1)) do
    %Sonata.Expr.Call{name: "line_send", arguments: [var1]}
  end
  @doc("implementation of ?| operator")
  def(line_vertical(var1)) do
    %Sonata.Expr.Call{name: "line_vertical", arguments: [var1]}
  end
  @doc("natural logarithm")
  def(ln(var1)) do
    %Sonata.Expr.Call{name: "ln", arguments: [var1]}
  end
  @doc("large object close")
  def(lo_close(var1)) do
    %Sonata.Expr.Call{name: "lo_close", arguments: [var1]}
  end
  @doc("large object create")
  def(lo_creat(var1)) do
    %Sonata.Expr.Call{name: "lo_creat", arguments: [var1]}
  end
  @doc("large object create")
  def(lo_create(var1)) do
    %Sonata.Expr.Call{name: "lo_create", arguments: [var1]}
  end
  @doc("large object export")
  def(lo_export(var1, var2)) do
    %Sonata.Expr.Call{name: "lo_export", arguments: [var1, var2]}
  end
  @doc("create new large object with given content")
  def(lo_from_bytea(var1, var2)) do
    %Sonata.Expr.Call{name: "lo_from_bytea", arguments: [var1, var2]}
  end
  @doc("read entire large object")
  def(lo_get(var1)) do
    %Sonata.Expr.Call{name: "lo_get", arguments: [var1]}
  end
  @doc("large object import")
  def(lo_import(var1)) do
    %Sonata.Expr.Call{name: "lo_import", arguments: [var1]}
  end
  @doc("large object seek")
  def(lo_lseek(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "lo_lseek", arguments: [var1, var2, var3]}
  end
  @doc("large object seek (64 bit)")
  def(lo_lseek64(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "lo_lseek64", arguments: [var1, var2, var3]}
  end
  @doc("large object open")
  def(lo_open(var1, var2)) do
    %Sonata.Expr.Call{name: "lo_open", arguments: [var1, var2]}
  end
  @doc("write data at offset")
  def(lo_put(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "lo_put", arguments: [var1, var2, var3]}
  end
  @doc("large object position")
  def(lo_tell(var1)) do
    %Sonata.Expr.Call{name: "lo_tell", arguments: [var1]}
  end
  @doc("large object position (64 bit)")
  def(lo_tell64(var1)) do
    %Sonata.Expr.Call{name: "lo_tell64", arguments: [var1]}
  end
  @doc("truncate large object")
  def(lo_truncate(var1, var2)) do
    %Sonata.Expr.Call{name: "lo_truncate", arguments: [var1, var2]}
  end
  @doc("truncate large object (64 bit)")
  def(lo_truncate64(var1, var2)) do
    %Sonata.Expr.Call{name: "lo_truncate64", arguments: [var1, var2]}
  end
  @doc("large object unlink (delete)")
  def(lo_unlink(var1)) do
    %Sonata.Expr.Call{name: "lo_unlink", arguments: [var1]}
  end
  @doc("base 10 logarithm")
  def(log(var1)) do
    %Sonata.Expr.Call{name: "log", arguments: [var1]}
  end
  @doc("large object read")
  def(loread(var1, var2)) do
    %Sonata.Expr.Call{name: "loread", arguments: [var1, var2]}
  end
  @doc("lowercase")
  def(lower(var1)) do
    %Sonata.Expr.Call{name: "lower", arguments: [var1]}
  end
  @doc("is the range's lower bound inclusive?")
  def(lower_inc(var1)) do
    %Sonata.Expr.Call{name: "lower_inc", arguments: [var1]}
  end
  @doc("is the range's lower bound infinite?")
  def(lower_inf(var1)) do
    %Sonata.Expr.Call{name: "lower_inf", arguments: [var1]}
  end
  @doc("large object write")
  def(lowrite(var1, var2)) do
    %Sonata.Expr.Call{name: "lowrite", arguments: [var1, var2]}
  end
  @doc("left-pad string to length")
  def(lpad(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "lpad", arguments: [var1, var2, var3]}
  end
  @doc("diagonal of")
  def(lseg(var1)) do
    %Sonata.Expr.Call{name: "lseg", arguments: [var1]}
  end
  @doc("implementation of @@ operator")
  def(lseg_center(var1)) do
    %Sonata.Expr.Call{name: "lseg_center", arguments: [var1]}
  end
  @doc("implementation of <-> operator")
  def(lseg_distance(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_distance", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(lseg_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(lseg_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(lseg_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_gt", arguments: [var1, var2]}
  end
  @doc("implementation of ?- operator")
  def(lseg_horizontal(var1)) do
    %Sonata.Expr.Call{name: "lseg_horizontal", arguments: [var1]}
  end
  @doc("I/O")
  def(lseg_in(var1)) do
    %Sonata.Expr.Call{name: "lseg_in", arguments: [var1]}
  end
  @doc("implementation of # operator")
  def(lseg_interpt(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_interpt", arguments: [var1, var2]}
  end
  @doc("implementation of ?# operator")
  def(lseg_intersect(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_intersect", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(lseg_le(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_le", arguments: [var1, var2]}
  end
  @doc("implementation of @-@ operator")
  def(lseg_length(var1)) do
    %Sonata.Expr.Call{name: "lseg_length", arguments: [var1]}
  end
  @doc("implementation of < operator")
  def(lseg_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(lseg_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(lseg_out(var1)) do
    %Sonata.Expr.Call{name: "lseg_out", arguments: [var1]}
  end
  @doc("implementation of ?|| operator")
  def(lseg_parallel(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_parallel", arguments: [var1, var2]}
  end
  @doc("implementation of ?-| operator")
  def(lseg_perp(var1, var2)) do
    %Sonata.Expr.Call{name: "lseg_perp", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(lseg_recv(var1)) do
    %Sonata.Expr.Call{name: "lseg_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(lseg_send(var1)) do
    %Sonata.Expr.Call{name: "lseg_send", arguments: [var1]}
  end
  @doc("implementation of ?| operator")
  def(lseg_vertical(var1)) do
    %Sonata.Expr.Call{name: "lseg_vertical", arguments: [var1]}
  end
  @doc("trim selected characters from left end of string")
  def(ltrim(var1, var2)) do
    %Sonata.Expr.Call{name: "ltrim", arguments: [var1, var2]}
  end
  @doc("implementation of & operator")
  def(macaddr_and(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_and", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(macaddr_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(macaddr_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(macaddr_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(macaddr_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(macaddr_in(var1)) do
    %Sonata.Expr.Call{name: "macaddr_in", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(macaddr_le(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(macaddr_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(macaddr_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_ne", arguments: [var1, var2]}
  end
  @doc("implementation of ~ operator")
  def(macaddr_not(var1)) do
    %Sonata.Expr.Call{name: "macaddr_not", arguments: [var1]}
  end
  @doc("implementation of | operator")
  def(macaddr_or(var1, var2)) do
    %Sonata.Expr.Call{name: "macaddr_or", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(macaddr_out(var1)) do
    %Sonata.Expr.Call{name: "macaddr_out", arguments: [var1]}
  end
  @doc("I/O")
  def(macaddr_recv(var1)) do
    %Sonata.Expr.Call{name: "macaddr_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(macaddr_send(var1)) do
    %Sonata.Expr.Call{name: "macaddr_send", arguments: [var1]}
  end
  @doc("construct date")
  def(make_date(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "make_date", arguments: [var1, var2, var3]}
  end
  @doc("construct interval")
  def(make_interval(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "make_interval", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("construct time")
  def(make_time(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "make_time", arguments: [var1, var2, var3]}
  end
  @doc("construct timestamp")
  def(make_timestamp(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "make_timestamp", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("construct timestamp with time zone")
  def(make_timestamptz(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "make_timestamptz", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("make ACL item")
  def(makeaclitem(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "makeaclitem", arguments: [var1, var2, var3, var4]}
  end
  @doc("netmask length")
  def(masklen(var1)) do
    %Sonata.Expr.Call{name: "masklen", arguments: [var1]}
  end
  @doc("maximum value of all money input values")
  def(max(var1)) do
    %Sonata.Expr.Call{name: "max", arguments: [var1]}
  end
  @doc("MD5 hash")
  def(md5(var1)) do
    %Sonata.Expr.Call{name: "md5", arguments: [var1]}
  end
  @doc("internal conversion function for MULE_INTERNAL to SQL_ASCII")
  def(mic_to_ascii(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_ascii", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to BIG5")
  def(mic_to_big5(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_big5", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to EUC_CN")
  def(mic_to_euc_cn(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_euc_cn", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to EUC_JP")
  def(mic_to_euc_jp(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_euc_jp", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to EUC_KR")
  def(mic_to_euc_kr(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_euc_kr", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to EUC_TW")
  def(mic_to_euc_tw(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_euc_tw", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to ISO-8859-5")
  def(mic_to_iso(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_iso", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to KOI8R")
  def(mic_to_koi8r(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_koi8r", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to LATIN1")
  def(mic_to_latin1(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_latin1", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to LATIN2")
  def(mic_to_latin2(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_latin2", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to LATIN3")
  def(mic_to_latin3(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_latin3", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to LATIN4")
  def(mic_to_latin4(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_latin4", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to SJIS")
  def(mic_to_sjis(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_sjis", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to WIN1250")
  def(mic_to_win1250(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_win1250", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to WIN1251")
  def(mic_to_win1251(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_win1251", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for MULE_INTERNAL to WIN866")
  def(mic_to_win866(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "mic_to_win866", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("minimum value of all time with time zone input values")
  def(min(var1)) do
    %Sonata.Expr.Call{name: "min", arguments: [var1]}
  end
  @doc("implementation of <#> operator")
  def(mktinterval(var1, var2)) do
    %Sonata.Expr.Call{name: "mktinterval", arguments: [var1, var2]}
  end
  @doc("modulus")
  def(mod(var1, var2)) do
    %Sonata.Expr.Call{name: "mod", arguments: [var1, var2]}
  end
  @doc("most common value")
  def(mode(var1)) do
    %Sonata.Expr.Call{name: "mode", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(mode_final(var1, var2)) do
    %Sonata.Expr.Call{name: "mode_final", arguments: [var1, var2]}
  end
  @doc("convert int8 to money")
  def(money(var1)) do
    %Sonata.Expr.Call{name: "money", arguments: [var1]}
  end
  @doc("implementation of * operator")
  def(mul_d_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "mul_d_interval", arguments: [var1, var2]}
  end
  @doc("age of a multi-transaction ID, in multi-transactions before current multi-transaction")
  def(mxid_age(var1)) do
    %Sonata.Expr.Call{name: "mxid_age", arguments: [var1]}
  end
  @doc("convert char(n) to name")
  def(name(var1)) do
    %Sonata.Expr.Call{name: "name", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(nameeq(var1, var2)) do
    %Sonata.Expr.Call{name: "nameeq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(namege(var1, var2)) do
    %Sonata.Expr.Call{name: "namege", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(namegt(var1, var2)) do
    %Sonata.Expr.Call{name: "namegt", arguments: [var1, var2]}
  end
  @doc("implementation of ~~* operator")
  def(nameiclike(var1, var2)) do
    %Sonata.Expr.Call{name: "nameiclike", arguments: [var1, var2]}
  end
  @doc("implementation of !~~* operator")
  def(nameicnlike(var1, var2)) do
    %Sonata.Expr.Call{name: "nameicnlike", arguments: [var1, var2]}
  end
  @doc("implementation of ~* operator")
  def(nameicregexeq(var1, var2)) do
    %Sonata.Expr.Call{name: "nameicregexeq", arguments: [var1, var2]}
  end
  @doc("implementation of !~* operator")
  def(nameicregexne(var1, var2)) do
    %Sonata.Expr.Call{name: "nameicregexne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(namein(var1)) do
    %Sonata.Expr.Call{name: "namein", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(namele(var1, var2)) do
    %Sonata.Expr.Call{name: "namele", arguments: [var1, var2]}
  end
  @doc("implementation of ~~ operator")
  def(namelike(var1, var2)) do
    %Sonata.Expr.Call{name: "namelike", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(namelt(var1, var2)) do
    %Sonata.Expr.Call{name: "namelt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(namene(var1, var2)) do
    %Sonata.Expr.Call{name: "namene", arguments: [var1, var2]}
  end
  @doc("implementation of !~~ operator")
  def(namenlike(var1, var2)) do
    %Sonata.Expr.Call{name: "namenlike", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(nameout(var1)) do
    %Sonata.Expr.Call{name: "nameout", arguments: [var1]}
  end
  @doc("I/O")
  def(namerecv(var1)) do
    %Sonata.Expr.Call{name: "namerecv", arguments: [var1]}
  end
  @doc("implementation of ~ operator")
  def(nameregexeq(var1, var2)) do
    %Sonata.Expr.Call{name: "nameregexeq", arguments: [var1, var2]}
  end
  @doc("implementation of !~ operator")
  def(nameregexne(var1, var2)) do
    %Sonata.Expr.Call{name: "nameregexne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(namesend(var1)) do
    %Sonata.Expr.Call{name: "namesend", arguments: [var1]}
  end
  @doc("join selectivity of <> and related operators")
  def(neqjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "neqjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of <> and related operators")
  def(neqsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "neqsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("netmask of address")
  def(netmask(var1)) do
    %Sonata.Expr.Call{name: "netmask", arguments: [var1]}
  end
  @doc("network part of address")
  def(network(var1)) do
    %Sonata.Expr.Call{name: "network", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(network_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "network_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(network_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "network_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(network_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "network_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(network_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "network_gt", arguments: [var1, var2]}
  end
  @doc("larger of two")
  def(network_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "network_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(network_le(var1, var2)) do
    %Sonata.Expr.Call{name: "network_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(network_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "network_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(network_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "network_ne", arguments: [var1, var2]}
  end
  @doc("implementation of && operator")
  def(network_overlap(var1, var2)) do
    %Sonata.Expr.Call{name: "network_overlap", arguments: [var1, var2]}
  end
  @doc("smaller of two")
  def(network_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "network_smaller", arguments: [var1, var2]}
  end
  @doc("implementation of << operator")
  def(network_sub(var1, var2)) do
    %Sonata.Expr.Call{name: "network_sub", arguments: [var1, var2]}
  end
  @doc("implementation of <<= operator")
  def(network_subeq(var1, var2)) do
    %Sonata.Expr.Call{name: "network_subeq", arguments: [var1, var2]}
  end
  @doc("implementation of >> operator")
  def(network_sup(var1, var2)) do
    %Sonata.Expr.Call{name: "network_sup", arguments: [var1, var2]}
  end
  @doc("implementation of >>= operator")
  def(network_supeq(var1, var2)) do
    %Sonata.Expr.Call{name: "network_supeq", arguments: [var1, var2]}
  end
  @doc("join selectivity for network operators")
  def(networkjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "networkjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity for network operators")
  def(networksel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "networksel", arguments: [var1, var2, var3, var4]}
  end
  @doc("sequence next value")
  def(nextval(var1)) do
    %Sonata.Expr.Call{name: "nextval", arguments: [var1]}
  end
  @doc("join selectivity of NOT LIKE")
  def(nlikejoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "nlikejoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of NOT LIKE")
  def(nlikesel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "nlikesel", arguments: [var1, var2, var3, var4]}
  end
  @doc("does not match LIKE expression")
  def(notlike(var1, var2)) do
    %Sonata.Expr.Call{name: "notlike", arguments: [var1, var2]}
  end
  @doc("current transaction time")
  def(now()) do
    %Sonata.Expr.Call{name: "now", arguments: []}
  end
  @doc("number of points")
  def(npoints(var1)) do
    %Sonata.Expr.Call{name: "npoints", arguments: [var1]}
  end
  @doc("fetch the Nth row value")
  def(nth_value(var1, var2)) do
    %Sonata.Expr.Call{name: "nth_value", arguments: [var1, var2]}
  end
  @doc("split rows into N groups")
  def(ntile(var1)) do
    %Sonata.Expr.Call{name: "ntile", arguments: [var1]}
  end
  @doc("convert int8 to numeric")
  def(numeric(var1)) do
    %Sonata.Expr.Call{name: "numeric", arguments: [var1]}
  end
  @doc("implementation of @ operator")
  def(numeric_abs(var1)) do
    %Sonata.Expr.Call{name: "numeric_abs", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(numeric_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_accum", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(numeric_accum_inv(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_accum_inv", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(numeric_add(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_add", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(numeric_avg(var1)) do
    %Sonata.Expr.Call{name: "numeric_avg", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(numeric_avg_accum(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_avg_accum", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(numeric_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(numeric_div(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_div", arguments: [var1, var2]}
  end
  @doc("trunc(x/y)")
  def(numeric_div_trunc(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_div_trunc", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(numeric_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_eq", arguments: [var1, var2]}
  end
  @doc("natural exponential (e^x)")
  def(numeric_exp(var1)) do
    %Sonata.Expr.Call{name: "numeric_exp", arguments: [var1]}
  end
  @doc("implementation of ! operator")
  def(numeric_fac(var1)) do
    %Sonata.Expr.Call{name: "numeric_fac", arguments: [var1]}
  end
  @doc("implementation of >= operator")
  def(numeric_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(numeric_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(numeric_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "numeric_in", arguments: [var1, var2, var3]}
  end
  @doc("increment by one")
  def(numeric_inc(var1)) do
    %Sonata.Expr.Call{name: "numeric_inc", arguments: [var1]}
  end
  @doc("larger of two")
  def(numeric_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(numeric_le(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_le", arguments: [var1, var2]}
  end
  @doc("natural logarithm")
  def(numeric_ln(var1)) do
    %Sonata.Expr.Call{name: "numeric_ln", arguments: [var1]}
  end
  @doc("logarithm base m of n")
  def(numeric_log(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_log", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(numeric_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_lt", arguments: [var1, var2]}
  end
  @doc("implementation of % operator")
  def(numeric_mod(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_mod", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(numeric_mul(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(numeric_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(numeric_out(var1)) do
    %Sonata.Expr.Call{name: "numeric_out", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_poly_avg(var1)) do
    %Sonata.Expr.Call{name: "numeric_poly_avg", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_poly_stddev_pop(var1)) do
    %Sonata.Expr.Call{name: "numeric_poly_stddev_pop", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_poly_stddev_samp(var1)) do
    %Sonata.Expr.Call{name: "numeric_poly_stddev_samp", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_poly_sum(var1)) do
    %Sonata.Expr.Call{name: "numeric_poly_sum", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_poly_var_pop(var1)) do
    %Sonata.Expr.Call{name: "numeric_poly_var_pop", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_poly_var_samp(var1)) do
    %Sonata.Expr.Call{name: "numeric_poly_var_samp", arguments: [var1]}
  end
  @doc("implementation of ^ operator")
  def(numeric_power(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_power", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(numeric_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "numeric_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(numeric_send(var1)) do
    %Sonata.Expr.Call{name: "numeric_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(numeric_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_smaller", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(numeric_sortsupport(var1)) do
    %Sonata.Expr.Call{name: "numeric_sortsupport", arguments: [var1]}
  end
  @doc("square root")
  def(numeric_sqrt(var1)) do
    %Sonata.Expr.Call{name: "numeric_sqrt", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_stddev_pop(var1)) do
    %Sonata.Expr.Call{name: "numeric_stddev_pop", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_stddev_samp(var1)) do
    %Sonata.Expr.Call{name: "numeric_stddev_samp", arguments: [var1]}
  end
  @doc("implementation of - operator")
  def(numeric_sub(var1, var2)) do
    %Sonata.Expr.Call{name: "numeric_sub", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(numeric_sum(var1)) do
    %Sonata.Expr.Call{name: "numeric_sum", arguments: [var1]}
  end
  @doc("transform a numeric length coercion")
  def(numeric_transform(var1)) do
    %Sonata.Expr.Call{name: "numeric_transform", arguments: [var1]}
  end
  @doc("implementation of - operator")
  def(numeric_uminus(var1)) do
    %Sonata.Expr.Call{name: "numeric_uminus", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(numeric_uplus(var1)) do
    %Sonata.Expr.Call{name: "numeric_uplus", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_var_pop(var1)) do
    %Sonata.Expr.Call{name: "numeric_var_pop", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(numeric_var_samp(var1)) do
    %Sonata.Expr.Call{name: "numeric_var_samp", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(numerictypmodin(var1)) do
    %Sonata.Expr.Call{name: "numerictypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(numerictypmodout(var1)) do
    %Sonata.Expr.Call{name: "numerictypmodout", arguments: [var1]}
  end
  @doc("number of nodes")
  def(numnode(var1)) do
    %Sonata.Expr.Call{name: "numnode", arguments: [var1]}
  end
  @doc("numrange constructor")
  def(numrange(var1, var2)) do
    %Sonata.Expr.Call{name: "numrange", arguments: [var1, var2]}
  end
  @doc("float8 difference of two numeric values")
  def(numrange_subdiff(var1, var2)) do
    %Sonata.Expr.Call{name: "numrange_subdiff", arguments: [var1, var2]}
  end
  @doc("get description for object id and catalog name")
  def(obj_description(var1, var2)) do
    %Sonata.Expr.Call{name: "obj_description", arguments: [var1, var2]}
  end
  @doc("octet length")
  def(octet_length(var1)) do
    %Sonata.Expr.Call{name: "octet_length", arguments: [var1]}
  end
  @doc("convert int8 to oid")
  def(oid(var1)) do
    %Sonata.Expr.Call{name: "oid", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(oideq(var1, var2)) do
    %Sonata.Expr.Call{name: "oideq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(oidge(var1, var2)) do
    %Sonata.Expr.Call{name: "oidge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(oidgt(var1, var2)) do
    %Sonata.Expr.Call{name: "oidgt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(oidin(var1)) do
    %Sonata.Expr.Call{name: "oidin", arguments: [var1]}
  end
  @doc("larger of two")
  def(oidlarger(var1, var2)) do
    %Sonata.Expr.Call{name: "oidlarger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(oidle(var1, var2)) do
    %Sonata.Expr.Call{name: "oidle", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(oidlt(var1, var2)) do
    %Sonata.Expr.Call{name: "oidlt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(oidne(var1, var2)) do
    %Sonata.Expr.Call{name: "oidne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(oidout(var1)) do
    %Sonata.Expr.Call{name: "oidout", arguments: [var1]}
  end
  @doc("I/O")
  def(oidrecv(var1)) do
    %Sonata.Expr.Call{name: "oidrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(oidsend(var1)) do
    %Sonata.Expr.Call{name: "oidsend", arguments: [var1]}
  end
  @doc("smaller of two")
  def(oidsmaller(var1, var2)) do
    %Sonata.Expr.Call{name: "oidsmaller", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(oidvectoreq(var1, var2)) do
    %Sonata.Expr.Call{name: "oidvectoreq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(oidvectorge(var1, var2)) do
    %Sonata.Expr.Call{name: "oidvectorge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(oidvectorgt(var1, var2)) do
    %Sonata.Expr.Call{name: "oidvectorgt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(oidvectorin(var1)) do
    %Sonata.Expr.Call{name: "oidvectorin", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(oidvectorle(var1, var2)) do
    %Sonata.Expr.Call{name: "oidvectorle", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(oidvectorlt(var1, var2)) do
    %Sonata.Expr.Call{name: "oidvectorlt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(oidvectorne(var1, var2)) do
    %Sonata.Expr.Call{name: "oidvectorne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(oidvectorout(var1)) do
    %Sonata.Expr.Call{name: "oidvectorout", arguments: [var1]}
  end
  @doc("I/O")
  def(oidvectorrecv(var1)) do
    %Sonata.Expr.Call{name: "oidvectorrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(oidvectorsend(var1)) do
    %Sonata.Expr.Call{name: "oidvectorsend", arguments: [var1]}
  end
  @doc("print type names of oidvector field")
  def(oidvectortypes(var1)) do
    %Sonata.Expr.Call{name: "oidvectortypes", arguments: [var1]}
  end
  @doc("implementation of <@ operator")
  def(on_pb(var1, var2)) do
    %Sonata.Expr.Call{name: "on_pb", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(on_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "on_pl", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(on_ppath(var1, var2)) do
    %Sonata.Expr.Call{name: "on_ppath", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(on_ps(var1, var2)) do
    %Sonata.Expr.Call{name: "on_ps", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(on_sb(var1, var2)) do
    %Sonata.Expr.Call{name: "on_sb", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(on_sl(var1, var2)) do
    %Sonata.Expr.Call{name: "on_sl", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(opaque_in(var1)) do
    %Sonata.Expr.Call{name: "opaque_in", arguments: [var1]}
  end
  @doc("I/O")
  def(opaque_out(var1)) do
    %Sonata.Expr.Call{name: "opaque_out", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(ordered_set_transition(var1, var2)) do
    %Sonata.Expr.Call{name: "ordered_set_transition", arguments: [var1, var2]}
  end
  @doc("aggregate transition function")
  def(ordered_set_transition_multi(var1, var2)) do
    %Sonata.Expr.Call{name: "ordered_set_transition_multi", arguments: [var1, var2]}
  end
  @doc("intervals overlap?")
  def(overlaps(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "overlaps", arguments: [var1, var2, var3, var4]}
  end
  @doc("substitute portion of string")
  def(overlay(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "overlay", arguments: [var1, var2, var3, var4]}
  end
  @doc("convert polygon to path")
  def(path(var1)) do
    %Sonata.Expr.Call{name: "path", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(path_add(var1, var2)) do
    %Sonata.Expr.Call{name: "path_add", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(path_add_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "path_add_pt", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(path_center(var1)) do
    %Sonata.Expr.Call{name: "path_center", arguments: [var1]}
  end
  @doc("implementation of @> operator")
  def(path_contain_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "path_contain_pt", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(path_distance(var1, var2)) do
    %Sonata.Expr.Call{name: "path_distance", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(path_div_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "path_div_pt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(path_in(var1)) do
    %Sonata.Expr.Call{name: "path_in", arguments: [var1]}
  end
  @doc("implementation of ?# operator")
  def(path_inter(var1, var2)) do
    %Sonata.Expr.Call{name: "path_inter", arguments: [var1, var2]}
  end
  @doc("implementation of @-@ operator")
  def(path_length(var1)) do
    %Sonata.Expr.Call{name: "path_length", arguments: [var1]}
  end
  @doc("implementation of * operator")
  def(path_mul_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "path_mul_pt", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(path_n_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "path_n_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(path_n_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "path_n_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(path_n_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "path_n_gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(path_n_le(var1, var2)) do
    %Sonata.Expr.Call{name: "path_n_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(path_n_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "path_n_lt", arguments: [var1, var2]}
  end
  @doc("implementation of # operator")
  def(path_npoints(var1)) do
    %Sonata.Expr.Call{name: "path_npoints", arguments: [var1]}
  end
  @doc("I/O")
  def(path_out(var1)) do
    %Sonata.Expr.Call{name: "path_out", arguments: [var1]}
  end
  @doc("I/O")
  def(path_recv(var1)) do
    %Sonata.Expr.Call{name: "path_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(path_send(var1)) do
    %Sonata.Expr.Call{name: "path_send", arguments: [var1]}
  end
  @doc("implementation of - operator")
  def(path_sub_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "path_sub_pt", arguments: [var1, var2]}
  end
  @doc("close path")
  def(pclose(var1)) do
    %Sonata.Expr.Call{name: "pclose", arguments: [var1]}
  end
  @doc("fractional rank of hypothetical row")
  def(percent_rank(var1)) do
    %Sonata.Expr.Call{name: "percent_rank", arguments: [var1]}
  end
  @doc("aggregate final function")
  def(percent_rank_final(var1, var2)) do
    %Sonata.Expr.Call{name: "percent_rank_final", arguments: [var1, var2]}
  end
  @doc("multiple continuous percentiles")
  def(percentile_cont(var1, var2)) do
    %Sonata.Expr.Call{name: "percentile_cont", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(percentile_cont_float8_final(var1, var2)) do
    %Sonata.Expr.Call{name: "percentile_cont_float8_final", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(percentile_cont_float8_multi_final(var1, var2)) do
    %Sonata.Expr.Call{name: "percentile_cont_float8_multi_final", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(percentile_cont_interval_final(var1, var2)) do
    %Sonata.Expr.Call{name: "percentile_cont_interval_final", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(percentile_cont_interval_multi_final(var1, var2)) do
    %Sonata.Expr.Call{name: "percentile_cont_interval_multi_final", arguments: [var1, var2]}
  end
  @doc("discrete percentile")
  def(percentile_disc(var1, var2)) do
    %Sonata.Expr.Call{name: "percentile_disc", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(percentile_disc_final(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "percentile_disc_final", arguments: [var1, var2, var3]}
  end
  @doc("aggregate final function")
  def(percentile_disc_multi_final(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "percentile_disc_multi_final", arguments: [var1, var2, var3]}
  end
  @doc("obtain exclusive advisory lock")
  def(pg_advisory_lock(var1)) do
    %Sonata.Expr.Call{name: "pg_advisory_lock", arguments: [var1]}
  end
  @doc("obtain shared advisory lock")
  def(pg_advisory_lock_shared(var1)) do
    %Sonata.Expr.Call{name: "pg_advisory_lock_shared", arguments: [var1]}
  end
  @doc("release exclusive advisory lock")
  def(pg_advisory_unlock(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_advisory_unlock", arguments: [var1, var2]}
  end
  @doc("release all advisory locks")
  def(pg_advisory_unlock_all()) do
    %Sonata.Expr.Call{name: "pg_advisory_unlock_all", arguments: []}
  end
  @doc("release shared advisory lock")
  def(pg_advisory_unlock_shared(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_advisory_unlock_shared", arguments: [var1, var2]}
  end
  @doc("obtain exclusive advisory lock")
  def(pg_advisory_xact_lock(var1)) do
    %Sonata.Expr.Call{name: "pg_advisory_xact_lock", arguments: [var1]}
  end
  @doc("obtain shared advisory lock")
  def(pg_advisory_xact_lock_shared(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_advisory_xact_lock_shared", arguments: [var1, var2]}
  end
  @doc("list available extension versions")
  def(pg_available_extension_versions()) do
    %Sonata.Expr.Call{name: "pg_available_extension_versions", arguments: []}
  end
  @doc("list available extensions")
  def(pg_available_extensions()) do
    %Sonata.Expr.Call{name: "pg_available_extensions", arguments: []}
  end
  @doc("statistics: current backend PID")
  def(pg_backend_pid()) do
    %Sonata.Expr.Call{name: "pg_backend_pid", arguments: []}
  end
  @doc("start time of an online backup")
  def(pg_backup_start_time()) do
    %Sonata.Expr.Call{name: "pg_backup_start_time", arguments: []}
  end
  @doc("cancel a server process' current query")
  def(pg_cancel_backend(var1)) do
    %Sonata.Expr.Call{name: "pg_cancel_backend", arguments: [var1]}
  end
  @doc("convert encoding name to encoding id")
  def(pg_char_to_encoding(var1)) do
    %Sonata.Expr.Call{name: "pg_char_to_encoding", arguments: [var1]}
  end
  @doc("encoding name of current database")
  def(pg_client_encoding()) do
    %Sonata.Expr.Call{name: "pg_client_encoding", arguments: []}
  end
  @doc("collation of the argument; implementation of the COLLATION FOR expression")
  def(pg_collation_for(var1)) do
    %Sonata.Expr.Call{name: "pg_collation_for", arguments: [var1]}
  end
  @doc("is collation visible in search path?")
  def(pg_collation_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_collation_is_visible", arguments: [var1]}
  end
  @doc("is a column updatable")
  def(pg_column_is_updatable(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_column_is_updatable", arguments: [var1, var2, var3]}
  end
  @doc("bytes required to store the value, perhaps with compression")
  def(pg_column_size(var1)) do
    %Sonata.Expr.Call{name: "pg_column_size", arguments: [var1]}
  end
  @doc("configuration load time")
  def(pg_conf_load_time()) do
    %Sonata.Expr.Call{name: "pg_conf_load_time", arguments: []}
  end
  @doc("is conversion visible in search path?")
  def(pg_conversion_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_conversion_is_visible", arguments: [var1]}
  end
  @doc("set up a logical replication slot")
  def(pg_create_logical_replication_slot(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_create_logical_replication_slot", arguments: [var1, var2]}
  end
  @doc("create a physical replication slot")
  def(pg_create_physical_replication_slot(var1)) do
    %Sonata.Expr.Call{name: "pg_create_physical_replication_slot", arguments: [var1]}
  end
  @doc("create a named restore point")
  def(pg_create_restore_point(var1)) do
    %Sonata.Expr.Call{name: "pg_create_restore_point", arguments: [var1]}
  end
  @doc("current xlog insert location")
  def(pg_current_xlog_insert_location()) do
    %Sonata.Expr.Call{name: "pg_current_xlog_insert_location", arguments: []}
  end
  @doc("current xlog write location")
  def(pg_current_xlog_location()) do
    %Sonata.Expr.Call{name: "pg_current_xlog_location", arguments: []}
  end
  @doc("get the open cursors for this session")
  def(pg_cursor()) do
    %Sonata.Expr.Call{name: "pg_cursor", arguments: []}
  end
  @doc("total disk space usage for the specified database")
  def(pg_database_size(var1)) do
    %Sonata.Expr.Call{name: "pg_database_size", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_ddl_command_in(var1)) do
    %Sonata.Expr.Call{name: "pg_ddl_command_in", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_ddl_command_out(var1)) do
    %Sonata.Expr.Call{name: "pg_ddl_command_out", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_ddl_command_recv(var1)) do
    %Sonata.Expr.Call{name: "pg_ddl_command_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_ddl_command_send(var1)) do
    %Sonata.Expr.Call{name: "pg_ddl_command_send", arguments: [var1]}
  end
  @doc("get identification of SQL object")
  def(pg_describe_object(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_describe_object", arguments: [var1, var2, var3]}
  end
  @doc("drop a replication slot")
  def(pg_drop_replication_slot(var1)) do
    %Sonata.Expr.Call{name: "pg_drop_replication_slot", arguments: [var1]}
  end
  @doc("maximum octet length of a character in given encoding")
  def(pg_encoding_max_length(var1)) do
    %Sonata.Expr.Call{name: "pg_encoding_max_length", arguments: [var1]}
  end
  @doc("convert encoding id to encoding name")
  def(pg_encoding_to_char(var1)) do
    %Sonata.Expr.Call{name: "pg_encoding_to_char", arguments: [var1]}
  end
  @doc("list DDL actions being executed by the current command")
  def(pg_event_trigger_ddl_commands()) do
    %Sonata.Expr.Call{name: "pg_event_trigger_ddl_commands", arguments: []}
  end
  @doc("list objects dropped by the current command")
  def(pg_event_trigger_dropped_objects()) do
    %Sonata.Expr.Call{name: "pg_event_trigger_dropped_objects", arguments: []}
  end
  @doc("return Oid of the table getting rewritten")
  def(pg_event_trigger_table_rewrite_oid()) do
    %Sonata.Expr.Call{name: "pg_event_trigger_table_rewrite_oid", arguments: []}
  end
  @doc("return reason code for table getting rewritten")
  def(pg_event_trigger_table_rewrite_reason()) do
    %Sonata.Expr.Call{name: "pg_event_trigger_table_rewrite_reason", arguments: []}
  end
  @doc("export a snapshot")
  def(pg_export_snapshot()) do
    %Sonata.Expr.Call{name: "pg_export_snapshot", arguments: []}
  end
  @doc("flag an extension's table contents to be emitted by pg_dump")
  def(pg_extension_config_dump(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_extension_config_dump", arguments: [var1, var2]}
  end
  @doc("list an extension's version update paths")
  def(pg_extension_update_paths(var1)) do
    %Sonata.Expr.Call{name: "pg_extension_update_paths", arguments: [var1]}
  end
  @doc("relation OID for filenode and tablespace")
  def(pg_filenode_relation(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_filenode_relation", arguments: [var1, var2]}
  end
  @doc("is function visible in search path?")
  def(pg_function_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_function_is_visible", arguments: [var1]}
  end
  @doc("constraint description")
  def(pg_get_constraintdef(var1)) do
    %Sonata.Expr.Call{name: "pg_get_constraintdef", arguments: [var1]}
  end
  @doc("deparse an encoded expression with pretty-print option")
  def(pg_get_expr(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_get_expr", arguments: [var1, var2, var3]}
  end
  @doc("function argument default")
  def(pg_get_function_arg_default(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_get_function_arg_default", arguments: [var1, var2]}
  end
  @doc("argument list of a function")
  def(pg_get_function_arguments(var1)) do
    %Sonata.Expr.Call{name: "pg_get_function_arguments", arguments: [var1]}
  end
  @doc("identity argument list of a function")
  def(pg_get_function_identity_arguments(var1)) do
    %Sonata.Expr.Call{name: "pg_get_function_identity_arguments", arguments: [var1]}
  end
  @doc("result type of a function")
  def(pg_get_function_result(var1)) do
    %Sonata.Expr.Call{name: "pg_get_function_result", arguments: [var1]}
  end
  @doc("definition of a function")
  def(pg_get_functiondef(var1)) do
    %Sonata.Expr.Call{name: "pg_get_functiondef", arguments: [var1]}
  end
  @doc("index description")
  def(pg_get_indexdef(var1)) do
    %Sonata.Expr.Call{name: "pg_get_indexdef", arguments: [var1]}
  end
  @doc("list of SQL keywords")
  def(pg_get_keywords()) do
    %Sonata.Expr.Call{name: "pg_get_keywords", arguments: []}
  end
  @doc("view members of a multixactid")
  def(pg_get_multixact_members(var1)) do
    %Sonata.Expr.Call{name: "pg_get_multixact_members", arguments: [var1]}
  end
  @doc("get OID-based object address from name/args arrays")
  def(pg_get_object_address(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_get_object_address", arguments: [var1, var2, var3]}
  end
  @doc("information about replication slots currently in use")
  def(pg_get_replication_slots()) do
    %Sonata.Expr.Call{name: "pg_get_replication_slots", arguments: []}
  end
  @doc("source text of a rule with pretty-print option")
  def(pg_get_ruledef(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_get_ruledef", arguments: [var1, var2]}
  end
  @doc("name of sequence for a serial column")
  def(pg_get_serial_sequence(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_get_serial_sequence", arguments: [var1, var2]}
  end
  @doc("trigger description")
  def(pg_get_triggerdef(var1)) do
    %Sonata.Expr.Call{name: "pg_get_triggerdef", arguments: [var1]}
  end
  @doc("role name by OID (with fallback)")
  def(pg_get_userbyid(var1)) do
    %Sonata.Expr.Call{name: "pg_get_userbyid", arguments: [var1]}
  end
  @doc("select statement of a view")
  def(pg_get_viewdef(var1)) do
    %Sonata.Expr.Call{name: "pg_get_viewdef", arguments: [var1]}
  end
  @doc("current user privilege on role by role oid")
  def(pg_has_role(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_has_role", arguments: [var1, var2]}
  end
  @doc("get machine-parseable identification of SQL object")
  def(pg_identify_object(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_identify_object", arguments: [var1, var2, var3]}
  end
  @doc("get identification of SQL object for pg_get_object_address()")
  def(pg_identify_object_as_address(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_identify_object_as_address", arguments: [var1, var2, var3]}
  end
  @doc("disk space usage for all indexes attached to the specified table")
  def(pg_indexes_size(var1)) do
    %Sonata.Expr.Call{name: "pg_indexes_size", arguments: [var1]}
  end
  @doc("true if server is in online backup")
  def(pg_is_in_backup()) do
    %Sonata.Expr.Call{name: "pg_is_in_backup", arguments: []}
  end
  @doc("true if server is in recovery")
  def(pg_is_in_recovery()) do
    %Sonata.Expr.Call{name: "pg_is_in_recovery", arguments: []}
  end
  @doc("is schema another session's temp schema?")
  def(pg_is_other_temp_schema(var1)) do
    %Sonata.Expr.Call{name: "pg_is_other_temp_schema", arguments: [var1]}
  end
  @doc("true if xlog replay is paused")
  def(pg_is_xlog_replay_paused()) do
    %Sonata.Expr.Call{name: "pg_is_xlog_replay_paused", arguments: []}
  end
  @doc("get transaction Id and commit timestamp of latest transaction commit")
  def(pg_last_committed_xact()) do
    %Sonata.Expr.Call{name: "pg_last_committed_xact", arguments: []}
  end
  @doc("timestamp of last replay xact")
  def(pg_last_xact_replay_timestamp()) do
    %Sonata.Expr.Call{name: "pg_last_xact_replay_timestamp", arguments: []}
  end
  @doc("current xlog flush location")
  def(pg_last_xlog_receive_location()) do
    %Sonata.Expr.Call{name: "pg_last_xlog_receive_location", arguments: []}
  end
  @doc("last xlog replay location")
  def(pg_last_xlog_replay_location()) do
    %Sonata.Expr.Call{name: "pg_last_xlog_replay_location", arguments: []}
  end
  @doc("get the channels that the current backend listens to")
  def(pg_listening_channels()) do
    %Sonata.Expr.Call{name: "pg_listening_channels", arguments: []}
  end
  @doc("view system lock information")
  def(pg_lock_status()) do
    %Sonata.Expr.Call{name: "pg_lock_status", arguments: []}
  end
  @doc("get binary changes from replication slot")
  def(pg_logical_slot_get_binary_changes(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "pg_logical_slot_get_binary_changes", arguments: [var1, var2, var3, var4]}
  end
  @doc("get changes from replication slot")
  def(pg_logical_slot_get_changes(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "pg_logical_slot_get_changes", arguments: [var1, var2, var3, var4]}
  end
  @doc("peek at binary changes from replication slot")
  def(pg_logical_slot_peek_binary_changes(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "pg_logical_slot_peek_binary_changes", arguments: [var1, var2, var3, var4]}
  end
  @doc("peek at changes from replication slot")
  def(pg_logical_slot_peek_changes(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "pg_logical_slot_peek_changes", arguments: [var1, var2, var3, var4]}
  end
  @doc("list all files in a directory")
  def(pg_ls_dir(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_ls_dir", arguments: [var1, var2, var3]}
  end
  @doc("less-equal-greater")
  def(pg_lsn_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(pg_lsn_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(pg_lsn_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(pg_lsn_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_gt", arguments: [var1, var2]}
  end
  @doc("hash")
  def(pg_lsn_hash(var1)) do
    %Sonata.Expr.Call{name: "pg_lsn_hash", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_lsn_in(var1)) do
    %Sonata.Expr.Call{name: "pg_lsn_in", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(pg_lsn_le(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(pg_lsn_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(pg_lsn_mi(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_mi", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(pg_lsn_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_lsn_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(pg_lsn_out(var1)) do
    %Sonata.Expr.Call{name: "pg_lsn_out", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_lsn_recv(var1)) do
    %Sonata.Expr.Call{name: "pg_lsn_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_lsn_send(var1)) do
    %Sonata.Expr.Call{name: "pg_lsn_send", arguments: [var1]}
  end
  @doc("get OID of current session's temp schema, if any")
  def(pg_my_temp_schema()) do
    %Sonata.Expr.Call{name: "pg_my_temp_schema", arguments: []}
  end
  @doc("I/O")
  def(pg_node_tree_in(var1)) do
    %Sonata.Expr.Call{name: "pg_node_tree_in", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_node_tree_out(var1)) do
    %Sonata.Expr.Call{name: "pg_node_tree_out", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_node_tree_recv(var1)) do
    %Sonata.Expr.Call{name: "pg_node_tree_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(pg_node_tree_send(var1)) do
    %Sonata.Expr.Call{name: "pg_node_tree_send", arguments: [var1]}
  end
  @doc("send a notification event")
  def(pg_notify(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_notify", arguments: [var1, var2]}
  end
  @doc("is opclass visible in search path?")
  def(pg_opclass_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_opclass_is_visible", arguments: [var1]}
  end
  @doc("is operator visible in search path?")
  def(pg_operator_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_operator_is_visible", arguments: [var1]}
  end
  @doc("is opfamily visible in search path?")
  def(pg_opfamily_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_opfamily_is_visible", arguments: [var1]}
  end
  @doc("convert generic options array to name/value table")
  def(pg_options_to_table(var1)) do
    %Sonata.Expr.Call{name: "pg_options_to_table", arguments: [var1]}
  end
  @doc("postmaster start time")
  def(pg_postmaster_start_time()) do
    %Sonata.Expr.Call{name: "pg_postmaster_start_time", arguments: []}
  end
  @doc("get the prepared statements for this session")
  def(pg_prepared_statement()) do
    %Sonata.Expr.Call{name: "pg_prepared_statement", arguments: []}
  end
  @doc("view two-phase transactions")
  def(pg_prepared_xact()) do
    %Sonata.Expr.Call{name: "pg_prepared_xact", arguments: []}
  end
  @doc("read bytea from a file")
  def(pg_read_binary_file(var1)) do
    %Sonata.Expr.Call{name: "pg_read_binary_file", arguments: [var1]}
  end
  @doc("read text from a file")
  def(pg_read_file(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "pg_read_file", arguments: [var1, var2, var3]}
  end
  @doc("filenode identifier of relation")
  def(pg_relation_filenode(var1)) do
    %Sonata.Expr.Call{name: "pg_relation_filenode", arguments: [var1]}
  end
  @doc("file path of relation")
  def(pg_relation_filepath(var1)) do
    %Sonata.Expr.Call{name: "pg_relation_filepath", arguments: [var1]}
  end
  @doc("is a relation insertable/updatable/deletable")
  def(pg_relation_is_updatable(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_relation_is_updatable", arguments: [var1, var2]}
  end
  @doc("disk space usage for the main fork of the specified table or index")
  def(pg_relation_size(var1)) do
    %Sonata.Expr.Call{name: "pg_relation_size", arguments: [var1]}
  end
  @doc("reload configuration files")
  def(pg_reload_conf()) do
    %Sonata.Expr.Call{name: "pg_reload_conf", arguments: []}
  end
  @doc("advance replication itentifier to specific location")
  def(pg_replication_origin_advance(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_advance", arguments: [var1, var2]}
  end
  @doc("create a replication origin")
  def(pg_replication_origin_create(var1)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_create", arguments: [var1]}
  end
  @doc("drop replication origin identified by its name")
  def(pg_replication_origin_drop(var1)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_drop", arguments: [var1]}
  end
  @doc("translate the replication origin's name to its id")
  def(pg_replication_origin_oid(var1)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_oid", arguments: [var1]}
  end
  @doc("get an individual replication origin's replication progress")
  def(pg_replication_origin_progress(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_progress", arguments: [var1, var2]}
  end
  @doc("is a replication origin configured in this session")
  def(pg_replication_origin_session_is_setup()) do
    %Sonata.Expr.Call{name: "pg_replication_origin_session_is_setup", arguments: []}
  end
  @doc("get the replication progress of the current session")
  def(pg_replication_origin_session_progress(var1)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_session_progress", arguments: [var1]}
  end
  @doc("teardown configured replication progress tracking")
  def(pg_replication_origin_session_reset()) do
    %Sonata.Expr.Call{name: "pg_replication_origin_session_reset", arguments: []}
  end
  @doc("configure session to maintain replication progress tracking for the passed in origin")
  def(pg_replication_origin_session_setup(var1)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_session_setup", arguments: [var1]}
  end
  @doc("reset the transaction's origin lsn and timestamp")
  def(pg_replication_origin_xact_reset(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_xact_reset", arguments: [var1, var2]}
  end
  @doc("setup the transaction's origin lsn and timestamp")
  def(pg_replication_origin_xact_setup(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_replication_origin_xact_setup", arguments: [var1, var2]}
  end
  @doc("rotate log file")
  def(pg_rotate_logfile()) do
    %Sonata.Expr.Call{name: "pg_rotate_logfile", arguments: []}
  end
  @doc("sequence parameters, for use by information schema")
  def(pg_sequence_parameters(var1)) do
    %Sonata.Expr.Call{name: "pg_sequence_parameters", arguments: [var1]}
  end
  @doc("show config file settings")
  def(pg_show_all_file_settings()) do
    %Sonata.Expr.Call{name: "pg_show_all_file_settings", arguments: []}
  end
  @doc("SHOW ALL as a function")
  def(pg_show_all_settings()) do
    %Sonata.Expr.Call{name: "pg_show_all_settings", arguments: []}
  end
  @doc("get progress for all replication origins")
  def(pg_show_replication_origin_status()) do
    %Sonata.Expr.Call{name: "pg_show_replication_origin_status", arguments: []}
  end
  @doc("convert a numeric to a human readable text using size units")
  def(pg_size_pretty(var1)) do
    %Sonata.Expr.Call{name: "pg_size_pretty", arguments: [var1]}
  end
  @doc("sleep for the specified time in seconds")
  def(pg_sleep(var1)) do
    %Sonata.Expr.Call{name: "pg_sleep", arguments: [var1]}
  end
  @doc("sleep for the specified interval")
  def(pg_sleep_for(var1)) do
    %Sonata.Expr.Call{name: "pg_sleep_for", arguments: [var1]}
  end
  @doc("sleep until the specified time")
  def(pg_sleep_until(var1)) do
    %Sonata.Expr.Call{name: "pg_sleep_until", arguments: [var1]}
  end
  @doc("prepare for taking an online backup")
  def(pg_start_backup(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_start_backup", arguments: [var1, var2]}
  end
  @doc("statistics: discard current transaction's statistics snapshot")
  def(pg_stat_clear_snapshot()) do
    %Sonata.Expr.Call{name: "pg_stat_clear_snapshot", arguments: []}
  end
  @doc("get information about file")
  def(pg_stat_file(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_stat_file", arguments: [var1, var2]}
  end
  @doc("statistics: information about currently active backends")
  def(pg_stat_get_activity(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_activity", arguments: [var1]}
  end
  @doc("statistics: number of manual analyzes for a table")
  def(pg_stat_get_analyze_count(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_analyze_count", arguments: [var1]}
  end
  @doc("statistics: information about WAL archiver")
  def(pg_stat_get_archiver()) do
    %Sonata.Expr.Call{name: "pg_stat_get_archiver", arguments: []}
  end
  @doc("statistics: number of auto analyzes for a table")
  def(pg_stat_get_autoanalyze_count(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_autoanalyze_count", arguments: [var1]}
  end
  @doc("statistics: number of auto vacuums for a table")
  def(pg_stat_get_autovacuum_count(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_autovacuum_count", arguments: [var1]}
  end
  @doc("statistics: current query of backend")
  def(pg_stat_get_backend_activity(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_activity", arguments: [var1]}
  end
  @doc("statistics: start time for current query of backend")
  def(pg_stat_get_backend_activity_start(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_activity_start", arguments: [var1]}
  end
  @doc("statistics: address of client connected to backend")
  def(pg_stat_get_backend_client_addr(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_client_addr", arguments: [var1]}
  end
  @doc("statistics: port number of client connected to backend")
  def(pg_stat_get_backend_client_port(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_client_port", arguments: [var1]}
  end
  @doc("statistics: database ID of backend")
  def(pg_stat_get_backend_dbid(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_dbid", arguments: [var1]}
  end
  @doc("statistics: currently active backend IDs")
  def(pg_stat_get_backend_idset()) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_idset", arguments: []}
  end
  @doc("statistics: PID of backend")
  def(pg_stat_get_backend_pid(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_pid", arguments: [var1]}
  end
  @doc("statistics: start time for current backend session")
  def(pg_stat_get_backend_start(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_start", arguments: [var1]}
  end
  @doc("statistics: user ID of backend")
  def(pg_stat_get_backend_userid(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_userid", arguments: [var1]}
  end
  @doc("statistics: is backend currently waiting for a lock")
  def(pg_stat_get_backend_waiting(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_waiting", arguments: [var1]}
  end
  @doc("statistics: start time for backend's current transaction")
  def(pg_stat_get_backend_xact_start(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_backend_xact_start", arguments: [var1]}
  end
  @doc("statistics: number of buffers written by the bgwriter during checkpoints")
  def(pg_stat_get_bgwriter_buf_written_checkpoints()) do
    %Sonata.Expr.Call{name: "pg_stat_get_bgwriter_buf_written_checkpoints", arguments: []}
  end
  @doc("statistics: number of buffers written by the bgwriter for cleaning dirty buffers")
  def(pg_stat_get_bgwriter_buf_written_clean()) do
    %Sonata.Expr.Call{name: "pg_stat_get_bgwriter_buf_written_clean", arguments: []}
  end
  @doc("statistics: number of times the bgwriter stopped processing when it had written too many buffers while cleaning")
  def(pg_stat_get_bgwriter_maxwritten_clean()) do
    %Sonata.Expr.Call{name: "pg_stat_get_bgwriter_maxwritten_clean", arguments: []}
  end
  @doc("statistics: number of backend requested checkpoints started by the bgwriter")
  def(pg_stat_get_bgwriter_requested_checkpoints()) do
    %Sonata.Expr.Call{name: "pg_stat_get_bgwriter_requested_checkpoints", arguments: []}
  end
  @doc("statistics: last reset for the bgwriter")
  def(pg_stat_get_bgwriter_stat_reset_time()) do
    %Sonata.Expr.Call{name: "pg_stat_get_bgwriter_stat_reset_time", arguments: []}
  end
  @doc("statistics: number of timed checkpoints started by the bgwriter")
  def(pg_stat_get_bgwriter_timed_checkpoints()) do
    %Sonata.Expr.Call{name: "pg_stat_get_bgwriter_timed_checkpoints", arguments: []}
  end
  @doc("statistics: number of blocks fetched")
  def(pg_stat_get_blocks_fetched(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_blocks_fetched", arguments: [var1]}
  end
  @doc("statistics: number of blocks found in cache")
  def(pg_stat_get_blocks_hit(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_blocks_hit", arguments: [var1]}
  end
  @doc("statistics: number of buffer allocations")
  def(pg_stat_get_buf_alloc()) do
    %Sonata.Expr.Call{name: "pg_stat_get_buf_alloc", arguments: []}
  end
  @doc("statistics: number of backend buffer writes that did their own fsync")
  def(pg_stat_get_buf_fsync_backend()) do
    %Sonata.Expr.Call{name: "pg_stat_get_buf_fsync_backend", arguments: []}
  end
  @doc("statistics: number of buffers written by backends")
  def(pg_stat_get_buf_written_backend()) do
    %Sonata.Expr.Call{name: "pg_stat_get_buf_written_backend", arguments: []}
  end
  @doc("statistics: checkpoint time spent synchronizing buffers to disk, in msec")
  def(pg_stat_get_checkpoint_sync_time()) do
    %Sonata.Expr.Call{name: "pg_stat_get_checkpoint_sync_time", arguments: []}
  end
  @doc("statistics: checkpoint time spent writing buffers to disk, in msec")
  def(pg_stat_get_checkpoint_write_time()) do
    %Sonata.Expr.Call{name: "pg_stat_get_checkpoint_write_time", arguments: []}
  end
  @doc("statistics: block read time, in msec")
  def(pg_stat_get_db_blk_read_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_blk_read_time", arguments: [var1]}
  end
  @doc("statistics: block write time, in msec")
  def(pg_stat_get_db_blk_write_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_blk_write_time", arguments: [var1]}
  end
  @doc("statistics: blocks fetched for database")
  def(pg_stat_get_db_blocks_fetched(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_blocks_fetched", arguments: [var1]}
  end
  @doc("statistics: blocks found in cache for database")
  def(pg_stat_get_db_blocks_hit(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_blocks_hit", arguments: [var1]}
  end
  @doc("statistics: recovery conflicts in database")
  def(pg_stat_get_db_conflict_all(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_conflict_all", arguments: [var1]}
  end
  @doc("statistics: recovery conflicts in database caused by shared buffer pin")
  def(pg_stat_get_db_conflict_bufferpin(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_conflict_bufferpin", arguments: [var1]}
  end
  @doc("statistics: recovery conflicts in database caused by relation lock")
  def(pg_stat_get_db_conflict_lock(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_conflict_lock", arguments: [var1]}
  end
  @doc("statistics: recovery conflicts in database caused by snapshot expiry")
  def(pg_stat_get_db_conflict_snapshot(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_conflict_snapshot", arguments: [var1]}
  end
  @doc("statistics: recovery conflicts in database caused by buffer deadlock")
  def(pg_stat_get_db_conflict_startup_deadlock(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_conflict_startup_deadlock", arguments: [var1]}
  end
  @doc("statistics: recovery conflicts in database caused by drop tablespace")
  def(pg_stat_get_db_conflict_tablespace(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_conflict_tablespace", arguments: [var1]}
  end
  @doc("statistics: deadlocks detected in database")
  def(pg_stat_get_db_deadlocks(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_deadlocks", arguments: [var1]}
  end
  @doc("statistics: number of backends in database")
  def(pg_stat_get_db_numbackends(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_numbackends", arguments: [var1]}
  end
  @doc("statistics: last reset for a database")
  def(pg_stat_get_db_stat_reset_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_stat_reset_time", arguments: [var1]}
  end
  @doc("statistics: number of bytes in temporary files written")
  def(pg_stat_get_db_temp_bytes(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_temp_bytes", arguments: [var1]}
  end
  @doc("statistics: number of temporary files written")
  def(pg_stat_get_db_temp_files(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_temp_files", arguments: [var1]}
  end
  @doc("statistics: tuples deleted in database")
  def(pg_stat_get_db_tuples_deleted(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_tuples_deleted", arguments: [var1]}
  end
  @doc("statistics: tuples fetched for database")
  def(pg_stat_get_db_tuples_fetched(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_tuples_fetched", arguments: [var1]}
  end
  @doc("statistics: tuples inserted in database")
  def(pg_stat_get_db_tuples_inserted(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_tuples_inserted", arguments: [var1]}
  end
  @doc("statistics: tuples returned for database")
  def(pg_stat_get_db_tuples_returned(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_tuples_returned", arguments: [var1]}
  end
  @doc("statistics: tuples updated in database")
  def(pg_stat_get_db_tuples_updated(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_tuples_updated", arguments: [var1]}
  end
  @doc("statistics: transactions committed")
  def(pg_stat_get_db_xact_commit(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_xact_commit", arguments: [var1]}
  end
  @doc("statistics: transactions rolled back")
  def(pg_stat_get_db_xact_rollback(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_db_xact_rollback", arguments: [var1]}
  end
  @doc("statistics: number of dead tuples")
  def(pg_stat_get_dead_tuples(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_dead_tuples", arguments: [var1]}
  end
  @doc("statistics: number of function calls")
  def(pg_stat_get_function_calls(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_function_calls", arguments: [var1]}
  end
  @doc("statistics: self execution time of function, in msec")
  def(pg_stat_get_function_self_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_function_self_time", arguments: [var1]}
  end
  @doc("statistics: total execution time of function, in msec")
  def(pg_stat_get_function_total_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_function_total_time", arguments: [var1]}
  end
  @doc("statistics: last manual analyze time for a table")
  def(pg_stat_get_last_analyze_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_last_analyze_time", arguments: [var1]}
  end
  @doc("statistics: last auto analyze time for a table")
  def(pg_stat_get_last_autoanalyze_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_last_autoanalyze_time", arguments: [var1]}
  end
  @doc("statistics: last auto vacuum time for a table")
  def(pg_stat_get_last_autovacuum_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_last_autovacuum_time", arguments: [var1]}
  end
  @doc("statistics: last manual vacuum time for a table")
  def(pg_stat_get_last_vacuum_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_last_vacuum_time", arguments: [var1]}
  end
  @doc("statistics: number of live tuples")
  def(pg_stat_get_live_tuples(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_live_tuples", arguments: [var1]}
  end
  @doc("statistics: number of tuples changed since last analyze")
  def(pg_stat_get_mod_since_analyze(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_mod_since_analyze", arguments: [var1]}
  end
  @doc("statistics: number of scans done for table/index")
  def(pg_stat_get_numscans(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_numscans", arguments: [var1]}
  end
  @doc("statistics: timestamp of the current statistics snapshot")
  def(pg_stat_get_snapshot_timestamp()) do
    %Sonata.Expr.Call{name: "pg_stat_get_snapshot_timestamp", arguments: []}
  end
  @doc("statistics: number of tuples deleted")
  def(pg_stat_get_tuples_deleted(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_tuples_deleted", arguments: [var1]}
  end
  @doc("statistics: number of tuples fetched by idxscan")
  def(pg_stat_get_tuples_fetched(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_tuples_fetched", arguments: [var1]}
  end
  @doc("statistics: number of tuples hot updated")
  def(pg_stat_get_tuples_hot_updated(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_tuples_hot_updated", arguments: [var1]}
  end
  @doc("statistics: number of tuples inserted")
  def(pg_stat_get_tuples_inserted(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_tuples_inserted", arguments: [var1]}
  end
  @doc("statistics: number of tuples read by seqscan")
  def(pg_stat_get_tuples_returned(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_tuples_returned", arguments: [var1]}
  end
  @doc("statistics: number of tuples updated")
  def(pg_stat_get_tuples_updated(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_tuples_updated", arguments: [var1]}
  end
  @doc("statistics: number of manual vacuums for a table")
  def(pg_stat_get_vacuum_count(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_vacuum_count", arguments: [var1]}
  end
  @doc("statistics: information about currently active replication")
  def(pg_stat_get_wal_senders()) do
    %Sonata.Expr.Call{name: "pg_stat_get_wal_senders", arguments: []}
  end
  @doc("statistics: number of blocks fetched in current transaction")
  def(pg_stat_get_xact_blocks_fetched(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_blocks_fetched", arguments: [var1]}
  end
  @doc("statistics: number of blocks found in cache in current transaction")
  def(pg_stat_get_xact_blocks_hit(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_blocks_hit", arguments: [var1]}
  end
  @doc("statistics: number of function calls in current transaction")
  def(pg_stat_get_xact_function_calls(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_function_calls", arguments: [var1]}
  end
  @doc("statistics: self execution time of function in current transaction, in msec")
  def(pg_stat_get_xact_function_self_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_function_self_time", arguments: [var1]}
  end
  @doc("statistics: total execution time of function in current transaction, in msec")
  def(pg_stat_get_xact_function_total_time(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_function_total_time", arguments: [var1]}
  end
  @doc("statistics: number of scans done for table/index in current transaction")
  def(pg_stat_get_xact_numscans(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_numscans", arguments: [var1]}
  end
  @doc("statistics: number of tuples deleted in current transaction")
  def(pg_stat_get_xact_tuples_deleted(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_tuples_deleted", arguments: [var1]}
  end
  @doc("statistics: number of tuples fetched by idxscan in current transaction")
  def(pg_stat_get_xact_tuples_fetched(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_tuples_fetched", arguments: [var1]}
  end
  @doc("statistics: number of tuples hot updated in current transaction")
  def(pg_stat_get_xact_tuples_hot_updated(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_tuples_hot_updated", arguments: [var1]}
  end
  @doc("statistics: number of tuples inserted in current transaction")
  def(pg_stat_get_xact_tuples_inserted(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_tuples_inserted", arguments: [var1]}
  end
  @doc("statistics: number of tuples read by seqscan in current transaction")
  def(pg_stat_get_xact_tuples_returned(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_tuples_returned", arguments: [var1]}
  end
  @doc("statistics: number of tuples updated in current transaction")
  def(pg_stat_get_xact_tuples_updated(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_get_xact_tuples_updated", arguments: [var1]}
  end
  @doc("statistics: reset collected statistics for current database")
  def(pg_stat_reset()) do
    %Sonata.Expr.Call{name: "pg_stat_reset", arguments: []}
  end
  @doc("statistics: reset collected statistics shared across the cluster")
  def(pg_stat_reset_shared(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_reset_shared", arguments: [var1]}
  end
  @doc("statistics: reset collected statistics for a single function in the current database")
  def(pg_stat_reset_single_function_counters(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_reset_single_function_counters", arguments: [var1]}
  end
  @doc("statistics: reset collected statistics for a single table or index in the current database")
  def(pg_stat_reset_single_table_counters(var1)) do
    %Sonata.Expr.Call{name: "pg_stat_reset_single_table_counters", arguments: [var1]}
  end
  @doc("finish taking an online backup")
  def(pg_stop_backup()) do
    %Sonata.Expr.Call{name: "pg_stop_backup", arguments: []}
  end
  @doc("switch to new xlog file")
  def(pg_switch_xlog()) do
    %Sonata.Expr.Call{name: "pg_switch_xlog", arguments: []}
  end
  @doc("is table visible in search path?")
  def(pg_table_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_table_is_visible", arguments: [var1]}
  end
  @doc("disk space usage for the specified table, including TOAST, free space and visibility map")
  def(pg_table_size(var1)) do
    %Sonata.Expr.Call{name: "pg_table_size", arguments: [var1]}
  end
  @doc("get OIDs of databases in a tablespace")
  def(pg_tablespace_databases(var1)) do
    %Sonata.Expr.Call{name: "pg_tablespace_databases", arguments: [var1]}
  end
  @doc("tablespace location")
  def(pg_tablespace_location(var1)) do
    %Sonata.Expr.Call{name: "pg_tablespace_location", arguments: [var1]}
  end
  @doc("total disk space usage for the specified tablespace")
  def(pg_tablespace_size(var1)) do
    %Sonata.Expr.Call{name: "pg_tablespace_size", arguments: [var1]}
  end
  @doc("terminate a server process")
  def(pg_terminate_backend(var1)) do
    %Sonata.Expr.Call{name: "pg_terminate_backend", arguments: [var1]}
  end
  @doc("get the available time zone abbreviations")
  def(pg_timezone_abbrevs()) do
    %Sonata.Expr.Call{name: "pg_timezone_abbrevs", arguments: []}
  end
  @doc("get the available time zone names")
  def(pg_timezone_names()) do
    %Sonata.Expr.Call{name: "pg_timezone_names", arguments: []}
  end
  @doc("total disk space usage for the specified table and associated indexes")
  def(pg_total_relation_size(var1)) do
    %Sonata.Expr.Call{name: "pg_total_relation_size", arguments: [var1]}
  end
  @doc("current trigger depth")
  def(pg_trigger_depth()) do
    %Sonata.Expr.Call{name: "pg_trigger_depth", arguments: []}
  end
  @doc("obtain exclusive advisory lock if available")
  def(pg_try_advisory_lock(var1)) do
    %Sonata.Expr.Call{name: "pg_try_advisory_lock", arguments: [var1]}
  end
  @doc("obtain shared advisory lock if available")
  def(pg_try_advisory_lock_shared(var1)) do
    %Sonata.Expr.Call{name: "pg_try_advisory_lock_shared", arguments: [var1]}
  end
  @doc("obtain exclusive advisory lock if available")
  def(pg_try_advisory_xact_lock(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_try_advisory_xact_lock", arguments: [var1, var2]}
  end
  @doc("obtain shared advisory lock if available")
  def(pg_try_advisory_xact_lock_shared(var1)) do
    %Sonata.Expr.Call{name: "pg_try_advisory_xact_lock_shared", arguments: [var1]}
  end
  @doc("is text search configuration visible in search path?")
  def(pg_ts_config_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_ts_config_is_visible", arguments: [var1]}
  end
  @doc("is text search dictionary visible in search path?")
  def(pg_ts_dict_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_ts_dict_is_visible", arguments: [var1]}
  end
  @doc("is text search parser visible in search path?")
  def(pg_ts_parser_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_ts_parser_is_visible", arguments: [var1]}
  end
  @doc("is text search template visible in search path?")
  def(pg_ts_template_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_ts_template_is_visible", arguments: [var1]}
  end
  @doc("is type visible in search path?")
  def(pg_type_is_visible(var1)) do
    %Sonata.Expr.Call{name: "pg_type_is_visible", arguments: [var1]}
  end
  @doc("type of the argument")
  def(pg_typeof(var1)) do
    %Sonata.Expr.Call{name: "pg_typeof", arguments: [var1]}
  end
  @doc("get commit timestamp of a transaction")
  def(pg_xact_commit_timestamp(var1)) do
    %Sonata.Expr.Call{name: "pg_xact_commit_timestamp", arguments: [var1]}
  end
  @doc("difference in bytes, given two xlog locations")
  def(pg_xlog_location_diff(var1, var2)) do
    %Sonata.Expr.Call{name: "pg_xlog_location_diff", arguments: [var1, var2]}
  end
  @doc("pause xlog replay")
  def(pg_xlog_replay_pause()) do
    %Sonata.Expr.Call{name: "pg_xlog_replay_pause", arguments: []}
  end
  @doc("resume xlog replay, if it was paused")
  def(pg_xlog_replay_resume()) do
    %Sonata.Expr.Call{name: "pg_xlog_replay_resume", arguments: []}
  end
  @doc("xlog filename, given an xlog location")
  def(pg_xlogfile_name(var1)) do
    %Sonata.Expr.Call{name: "pg_xlogfile_name", arguments: [var1]}
  end
  @doc("xlog filename and byte offset, given an xlog location")
  def(pg_xlogfile_name_offset(var1)) do
    %Sonata.Expr.Call{name: "pg_xlogfile_name_offset", arguments: [var1]}
  end
  @doc("PI")
  def(pi()) do
    %Sonata.Expr.Call{name: "pi", arguments: []}
  end
  @doc("transform to tsquery")
  def(plainto_tsquery(var1)) do
    %Sonata.Expr.Call{name: "plainto_tsquery", arguments: [var1]}
  end
  @doc("center of")
  def(point(var1)) do
    %Sonata.Expr.Call{name: "point", arguments: [var1]}
  end
  @doc("implementation of >^ operator")
  def(point_above(var1, var2)) do
    %Sonata.Expr.Call{name: "point_above", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(point_add(var1, var2)) do
    %Sonata.Expr.Call{name: "point_add", arguments: [var1, var2]}
  end
  @doc("implementation of <^ operator")
  def(point_below(var1, var2)) do
    %Sonata.Expr.Call{name: "point_below", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(point_distance(var1, var2)) do
    %Sonata.Expr.Call{name: "point_distance", arguments: [var1, var2]}
  end
  @doc("implementation of / operator")
  def(point_div(var1, var2)) do
    %Sonata.Expr.Call{name: "point_div", arguments: [var1, var2]}
  end
  @doc("implementation of ~= operator")
  def(point_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "point_eq", arguments: [var1, var2]}
  end
  @doc("implementation of ?- operator")
  def(point_horiz(var1, var2)) do
    %Sonata.Expr.Call{name: "point_horiz", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(point_in(var1)) do
    %Sonata.Expr.Call{name: "point_in", arguments: [var1]}
  end
  @doc("implementation of << operator")
  def(point_left(var1, var2)) do
    %Sonata.Expr.Call{name: "point_left", arguments: [var1, var2]}
  end
  @doc("implementation of * operator")
  def(point_mul(var1, var2)) do
    %Sonata.Expr.Call{name: "point_mul", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(point_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "point_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(point_out(var1)) do
    %Sonata.Expr.Call{name: "point_out", arguments: [var1]}
  end
  @doc("I/O")
  def(point_recv(var1)) do
    %Sonata.Expr.Call{name: "point_recv", arguments: [var1]}
  end
  @doc("implementation of >> operator")
  def(point_right(var1, var2)) do
    %Sonata.Expr.Call{name: "point_right", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(point_send(var1)) do
    %Sonata.Expr.Call{name: "point_send", arguments: [var1]}
  end
  @doc("implementation of - operator")
  def(point_sub(var1, var2)) do
    %Sonata.Expr.Call{name: "point_sub", arguments: [var1, var2]}
  end
  @doc("implementation of ?| operator")
  def(point_vert(var1, var2)) do
    %Sonata.Expr.Call{name: "point_vert", arguments: [var1, var2]}
  end
  @doc("implementation of |>> operator")
  def(poly_above(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_above", arguments: [var1, var2]}
  end
  @doc("implementation of <<| operator")
  def(poly_below(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_below", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(poly_center(var1)) do
    %Sonata.Expr.Call{name: "poly_center", arguments: [var1]}
  end
  @doc("implementation of @> operator")
  def(poly_contain(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_contain", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(poly_contain_pt(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_contain_pt", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(poly_contained(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_contained", arguments: [var1, var2]}
  end
  @doc("implementation of <-> operator")
  def(poly_distance(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_distance", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(poly_in(var1)) do
    %Sonata.Expr.Call{name: "poly_in", arguments: [var1]}
  end
  @doc("implementation of << operator")
  def(poly_left(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_left", arguments: [var1, var2]}
  end
  @doc("implementation of # operator")
  def(poly_npoints(var1)) do
    %Sonata.Expr.Call{name: "poly_npoints", arguments: [var1]}
  end
  @doc("I/O")
  def(poly_out(var1)) do
    %Sonata.Expr.Call{name: "poly_out", arguments: [var1]}
  end
  @doc("implementation of |&> operator")
  def(poly_overabove(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_overabove", arguments: [var1, var2]}
  end
  @doc("implementation of &<| operator")
  def(poly_overbelow(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_overbelow", arguments: [var1, var2]}
  end
  @doc("implementation of && operator")
  def(poly_overlap(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_overlap", arguments: [var1, var2]}
  end
  @doc("implementation of &< operator")
  def(poly_overleft(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_overleft", arguments: [var1, var2]}
  end
  @doc("implementation of &> operator")
  def(poly_overright(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_overright", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(poly_recv(var1)) do
    %Sonata.Expr.Call{name: "poly_recv", arguments: [var1]}
  end
  @doc("implementation of >> operator")
  def(poly_right(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_right", arguments: [var1, var2]}
  end
  @doc("implementation of ~= operator")
  def(poly_same(var1, var2)) do
    %Sonata.Expr.Call{name: "poly_same", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(poly_send(var1)) do
    %Sonata.Expr.Call{name: "poly_send", arguments: [var1]}
  end
  @doc("convert path to polygon")
  def(polygon(var1)) do
    %Sonata.Expr.Call{name: "polygon", arguments: [var1]}
  end
  @doc("open path")
  def(popen(var1)) do
    %Sonata.Expr.Call{name: "popen", arguments: [var1]}
  end
  @doc("position of sub-bitstring")
  def(position(var1, var2)) do
    %Sonata.Expr.Call{name: "position", arguments: [var1, var2]}
  end
  @doc("join selectivity for position-comparison operators")
  def(positionjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "positionjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity for position-comparison operators")
  def(positionsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "positionsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("(internal)")
  def(postgresql_fdw_validator(var1, var2)) do
    %Sonata.Expr.Call{name: "postgresql_fdw_validator", arguments: [var1, var2]}
  end
  @doc("exponentiation")
  def(pow(var1, var2)) do
    %Sonata.Expr.Call{name: "pow", arguments: [var1, var2]}
  end
  @doc("exponentiation")
  def(power(var1, var2)) do
    %Sonata.Expr.Call{name: "power", arguments: [var1, var2]}
  end
  @doc("(internal)")
  def(prsd_end(var1)) do
    %Sonata.Expr.Call{name: "prsd_end", arguments: [var1]}
  end
  @doc("(internal)")
  def(prsd_headline(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "prsd_headline", arguments: [var1, var2, var3]}
  end
  @doc("(internal)")
  def(prsd_lextype(var1)) do
    %Sonata.Expr.Call{name: "prsd_lextype", arguments: [var1]}
  end
  @doc("(internal)")
  def(prsd_nexttoken(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "prsd_nexttoken", arguments: [var1, var2, var3]}
  end
  @doc("(internal)")
  def(prsd_start(var1, var2)) do
    %Sonata.Expr.Call{name: "prsd_start", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(pt_contained_circle(var1, var2)) do
    %Sonata.Expr.Call{name: "pt_contained_circle", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(pt_contained_poly(var1, var2)) do
    %Sonata.Expr.Call{name: "pt_contained_poly", arguments: [var1, var2]}
  end
  @doc("map query result to XML")
  def(query_to_xml(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "query_to_xml", arguments: [var1, var2, var3, var4]}
  end
  @doc("map query result and structure to XML and XML Schema")
  def(query_to_xml_and_xmlschema(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "query_to_xml_and_xmlschema", arguments: [var1, var2, var3, var4]}
  end
  @doc("map query result structure to XML Schema")
  def(query_to_xmlschema(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "query_to_xmlschema", arguments: [var1, var2, var3, var4]}
  end
  @doc("show real useful query for GiST index")
  def(querytree(var1)) do
    %Sonata.Expr.Call{name: "querytree", arguments: [var1]}
  end
  @doc("quote an identifier for usage in a querystring")
  def(quote_ident(var1)) do
    %Sonata.Expr.Call{name: "quote_ident", arguments: [var1]}
  end
  @doc("quote a literal for usage in a querystring")
  def(quote_literal(var1)) do
    %Sonata.Expr.Call{name: "quote_literal", arguments: [var1]}
  end
  @doc("quote a possibly-null literal for usage in a querystring")
  def(quote_nullable(var1)) do
    %Sonata.Expr.Call{name: "quote_nullable", arguments: [var1]}
  end
  @doc("degrees to radians")
  def(radians(var1)) do
    %Sonata.Expr.Call{name: "radians", arguments: [var1]}
  end
  @doc("radius of circle")
  def(radius(var1)) do
    %Sonata.Expr.Call{name: "radius", arguments: [var1]}
  end
  @doc("random value")
  def(random()) do
    %Sonata.Expr.Call{name: "random", arguments: []}
  end
  @doc("implementation of -|- operator")
  def(range_adjacent(var1, var2)) do
    %Sonata.Expr.Call{name: "range_adjacent", arguments: [var1, var2]}
  end
  @doc("implementation of >> operator")
  def(range_after(var1, var2)) do
    %Sonata.Expr.Call{name: "range_after", arguments: [var1, var2]}
  end
  @doc("implementation of << operator")
  def(range_before(var1, var2)) do
    %Sonata.Expr.Call{name: "range_before", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(range_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "range_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of <@ operator")
  def(range_contained_by(var1, var2)) do
    %Sonata.Expr.Call{name: "range_contained_by", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(range_contains(var1, var2)) do
    %Sonata.Expr.Call{name: "range_contains", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(range_contains_elem(var1, var2)) do
    %Sonata.Expr.Call{name: "range_contains_elem", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(range_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "range_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(range_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "range_ge", arguments: [var1, var2]}
  end
  @doc("GiST support")
  def(range_gist_compress(var1)) do
    %Sonata.Expr.Call{name: "range_gist_compress", arguments: [var1]}
  end
  @doc("GiST support")
  def(range_gist_consistent(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "range_gist_consistent", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("GiST support")
  def(range_gist_decompress(var1)) do
    %Sonata.Expr.Call{name: "range_gist_decompress", arguments: [var1]}
  end
  @doc("GiST support")
  def(range_gist_fetch(var1)) do
    %Sonata.Expr.Call{name: "range_gist_fetch", arguments: [var1]}
  end
  @doc("GiST support")
  def(range_gist_penalty(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "range_gist_penalty", arguments: [var1, var2, var3]}
  end
  @doc("GiST support")
  def(range_gist_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "range_gist_picksplit", arguments: [var1, var2]}
  end
  @doc("GiST support")
  def(range_gist_same(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "range_gist_same", arguments: [var1, var2, var3]}
  end
  @doc("GiST support")
  def(range_gist_union(var1, var2)) do
    %Sonata.Expr.Call{name: "range_gist_union", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(range_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "range_gt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(range_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "range_in", arguments: [var1, var2, var3]}
  end
  @doc("implementation of * operator")
  def(range_intersect(var1, var2)) do
    %Sonata.Expr.Call{name: "range_intersect", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(range_le(var1, var2)) do
    %Sonata.Expr.Call{name: "range_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(range_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "range_lt", arguments: [var1, var2]}
  end
  @doc("the smallest range which includes both of the given ranges")
  def(range_merge(var1, var2)) do
    %Sonata.Expr.Call{name: "range_merge", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(range_minus(var1, var2)) do
    %Sonata.Expr.Call{name: "range_minus", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(range_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "range_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(range_out(var1)) do
    %Sonata.Expr.Call{name: "range_out", arguments: [var1]}
  end
  @doc("implementation of && operator")
  def(range_overlaps(var1, var2)) do
    %Sonata.Expr.Call{name: "range_overlaps", arguments: [var1, var2]}
  end
  @doc("implementation of &< operator")
  def(range_overleft(var1, var2)) do
    %Sonata.Expr.Call{name: "range_overleft", arguments: [var1, var2]}
  end
  @doc("implementation of &> operator")
  def(range_overright(var1, var2)) do
    %Sonata.Expr.Call{name: "range_overright", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(range_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "range_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(range_send(var1)) do
    %Sonata.Expr.Call{name: "range_send", arguments: [var1]}
  end
  @doc("range typanalyze")
  def(range_typanalyze(var1)) do
    %Sonata.Expr.Call{name: "range_typanalyze", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(range_union(var1, var2)) do
    %Sonata.Expr.Call{name: "range_union", arguments: [var1, var2]}
  end
  @doc("restriction selectivity for range operators")
  def(rangesel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "rangesel", arguments: [var1, var2, var3, var4]}
  end
  @doc("integer rank with gaps")
  def(rank()) do
    %Sonata.Expr.Call{name: "rank", arguments: []}
  end
  @doc("aggregate final function")
  def(rank_final(var1, var2)) do
    %Sonata.Expr.Call{name: "rank_final", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(record_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "record_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(record_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "record_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(record_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "record_gt", arguments: [var1, var2]}
  end
  @doc("implementation of *= operator")
  def(record_image_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "record_image_eq", arguments: [var1, var2]}
  end
  @doc("implementation of *>= operator")
  def(record_image_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "record_image_ge", arguments: [var1, var2]}
  end
  @doc("implementation of *> operator")
  def(record_image_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "record_image_gt", arguments: [var1, var2]}
  end
  @doc("implementation of *<= operator")
  def(record_image_le(var1, var2)) do
    %Sonata.Expr.Call{name: "record_image_le", arguments: [var1, var2]}
  end
  @doc("implementation of *< operator")
  def(record_image_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "record_image_lt", arguments: [var1, var2]}
  end
  @doc("implementation of *<> operator")
  def(record_image_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "record_image_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(record_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "record_in", arguments: [var1, var2, var3]}
  end
  @doc("implementation of <= operator")
  def(record_le(var1, var2)) do
    %Sonata.Expr.Call{name: "record_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(record_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "record_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(record_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "record_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(record_out(var1)) do
    %Sonata.Expr.Call{name: "record_out", arguments: [var1]}
  end
  @doc("I/O")
  def(record_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "record_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(record_send(var1)) do
    %Sonata.Expr.Call{name: "record_send", arguments: [var1]}
  end
  @doc("convert text to regclass")
  def(regclass(var1)) do
    %Sonata.Expr.Call{name: "regclass", arguments: [var1]}
  end
  @doc("I/O")
  def(regclassin(var1)) do
    %Sonata.Expr.Call{name: "regclassin", arguments: [var1]}
  end
  @doc("I/O")
  def(regclassout(var1)) do
    %Sonata.Expr.Call{name: "regclassout", arguments: [var1]}
  end
  @doc("I/O")
  def(regclassrecv(var1)) do
    %Sonata.Expr.Call{name: "regclassrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regclasssend(var1)) do
    %Sonata.Expr.Call{name: "regclasssend", arguments: [var1]}
  end
  @doc("I/O")
  def(regconfigin(var1)) do
    %Sonata.Expr.Call{name: "regconfigin", arguments: [var1]}
  end
  @doc("I/O")
  def(regconfigout(var1)) do
    %Sonata.Expr.Call{name: "regconfigout", arguments: [var1]}
  end
  @doc("I/O")
  def(regconfigrecv(var1)) do
    %Sonata.Expr.Call{name: "regconfigrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regconfigsend(var1)) do
    %Sonata.Expr.Call{name: "regconfigsend", arguments: [var1]}
  end
  @doc("I/O")
  def(regdictionaryin(var1)) do
    %Sonata.Expr.Call{name: "regdictionaryin", arguments: [var1]}
  end
  @doc("I/O")
  def(regdictionaryout(var1)) do
    %Sonata.Expr.Call{name: "regdictionaryout", arguments: [var1]}
  end
  @doc("I/O")
  def(regdictionaryrecv(var1)) do
    %Sonata.Expr.Call{name: "regdictionaryrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regdictionarysend(var1)) do
    %Sonata.Expr.Call{name: "regdictionarysend", arguments: [var1]}
  end
  @doc("join selectivity of regex match")
  def(regexeqjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "regexeqjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of regex match")
  def(regexeqsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "regexeqsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("join selectivity of regex non-match")
  def(regexnejoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "regexnejoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of regex non-match")
  def(regexnesel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "regexnesel", arguments: [var1, var2, var3, var4]}
  end
  @doc("find all match groups for regexp")
  def(regexp_matches(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "regexp_matches", arguments: [var1, var2, var3]}
  end
  @doc("replace text using regexp")
  def(regexp_replace(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "regexp_replace", arguments: [var1, var2, var3]}
  end
  @doc("split string by pattern")
  def(regexp_split_to_array(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "regexp_split_to_array", arguments: [var1, var2, var3]}
  end
  @doc("split string by pattern")
  def(regexp_split_to_table(var1, var2)) do
    %Sonata.Expr.Call{name: "regexp_split_to_table", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(regnamespacein(var1)) do
    %Sonata.Expr.Call{name: "regnamespacein", arguments: [var1]}
  end
  @doc("I/O")
  def(regnamespaceout(var1)) do
    %Sonata.Expr.Call{name: "regnamespaceout", arguments: [var1]}
  end
  @doc("I/O")
  def(regnamespacerecv(var1)) do
    %Sonata.Expr.Call{name: "regnamespacerecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regnamespacesend(var1)) do
    %Sonata.Expr.Call{name: "regnamespacesend", arguments: [var1]}
  end
  @doc("I/O")
  def(regoperatorin(var1)) do
    %Sonata.Expr.Call{name: "regoperatorin", arguments: [var1]}
  end
  @doc("I/O")
  def(regoperatorout(var1)) do
    %Sonata.Expr.Call{name: "regoperatorout", arguments: [var1]}
  end
  @doc("I/O")
  def(regoperatorrecv(var1)) do
    %Sonata.Expr.Call{name: "regoperatorrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regoperatorsend(var1)) do
    %Sonata.Expr.Call{name: "regoperatorsend", arguments: [var1]}
  end
  @doc("I/O")
  def(regoperin(var1)) do
    %Sonata.Expr.Call{name: "regoperin", arguments: [var1]}
  end
  @doc("I/O")
  def(regoperout(var1)) do
    %Sonata.Expr.Call{name: "regoperout", arguments: [var1]}
  end
  @doc("I/O")
  def(regoperrecv(var1)) do
    %Sonata.Expr.Call{name: "regoperrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regopersend(var1)) do
    %Sonata.Expr.Call{name: "regopersend", arguments: [var1]}
  end
  @doc("I/O")
  def(regprocedurein(var1)) do
    %Sonata.Expr.Call{name: "regprocedurein", arguments: [var1]}
  end
  @doc("I/O")
  def(regprocedureout(var1)) do
    %Sonata.Expr.Call{name: "regprocedureout", arguments: [var1]}
  end
  @doc("I/O")
  def(regprocedurerecv(var1)) do
    %Sonata.Expr.Call{name: "regprocedurerecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regproceduresend(var1)) do
    %Sonata.Expr.Call{name: "regproceduresend", arguments: [var1]}
  end
  @doc("I/O")
  def(regprocin(var1)) do
    %Sonata.Expr.Call{name: "regprocin", arguments: [var1]}
  end
  @doc("I/O")
  def(regprocout(var1)) do
    %Sonata.Expr.Call{name: "regprocout", arguments: [var1]}
  end
  @doc("I/O")
  def(regprocrecv(var1)) do
    %Sonata.Expr.Call{name: "regprocrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regprocsend(var1)) do
    %Sonata.Expr.Call{name: "regprocsend", arguments: [var1]}
  end
  @doc("average of the independent variable (sum(X)/N)")
  def(regr_avgx(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_avgx", arguments: [var1, var2]}
  end
  @doc("average of the dependent variable (sum(Y)/N)")
  def(regr_avgy(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_avgy", arguments: [var1, var2]}
  end
  @doc("number of input rows in which both expressions are not null")
  def(regr_count(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_count", arguments: [var1, var2]}
  end
  @doc("y-intercept of the least-squares-fit linear equation determined by the (X, Y) pairs")
  def(regr_intercept(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_intercept", arguments: [var1, var2]}
  end
  @doc("square of the correlation coefficient")
  def(regr_r2(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_r2", arguments: [var1, var2]}
  end
  @doc("slope of the least-squares-fit linear equation determined by the (X, Y) pairs")
  def(regr_slope(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_slope", arguments: [var1, var2]}
  end
  @doc("sum of squares of the independent variable (sum(X^2) - sum(X)^2/N)")
  def(regr_sxx(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_sxx", arguments: [var1, var2]}
  end
  @doc("sum of products of independent times dependent variable (sum(X*Y) - sum(X) * sum(Y)/N)")
  def(regr_sxy(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_sxy", arguments: [var1, var2]}
  end
  @doc("sum of squares of the dependent variable (sum(Y^2) - sum(Y)^2/N)")
  def(regr_syy(var1, var2)) do
    %Sonata.Expr.Call{name: "regr_syy", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(regrolein(var1)) do
    %Sonata.Expr.Call{name: "regrolein", arguments: [var1]}
  end
  @doc("I/O")
  def(regroleout(var1)) do
    %Sonata.Expr.Call{name: "regroleout", arguments: [var1]}
  end
  @doc("I/O")
  def(regrolerecv(var1)) do
    %Sonata.Expr.Call{name: "regrolerecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regrolesend(var1)) do
    %Sonata.Expr.Call{name: "regrolesend", arguments: [var1]}
  end
  @doc("I/O")
  def(regtypein(var1)) do
    %Sonata.Expr.Call{name: "regtypein", arguments: [var1]}
  end
  @doc("I/O")
  def(regtypeout(var1)) do
    %Sonata.Expr.Call{name: "regtypeout", arguments: [var1]}
  end
  @doc("I/O")
  def(regtyperecv(var1)) do
    %Sonata.Expr.Call{name: "regtyperecv", arguments: [var1]}
  end
  @doc("I/O")
  def(regtypesend(var1)) do
    %Sonata.Expr.Call{name: "regtypesend", arguments: [var1]}
  end
  @doc("convert interval to reltime")
  def(reltime(var1)) do
    %Sonata.Expr.Call{name: "reltime", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(reltimeeq(var1, var2)) do
    %Sonata.Expr.Call{name: "reltimeeq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(reltimege(var1, var2)) do
    %Sonata.Expr.Call{name: "reltimege", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(reltimegt(var1, var2)) do
    %Sonata.Expr.Call{name: "reltimegt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(reltimein(var1)) do
    %Sonata.Expr.Call{name: "reltimein", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(reltimele(var1, var2)) do
    %Sonata.Expr.Call{name: "reltimele", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(reltimelt(var1, var2)) do
    %Sonata.Expr.Call{name: "reltimelt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(reltimene(var1, var2)) do
    %Sonata.Expr.Call{name: "reltimene", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(reltimeout(var1)) do
    %Sonata.Expr.Call{name: "reltimeout", arguments: [var1]}
  end
  @doc("I/O")
  def(reltimerecv(var1)) do
    %Sonata.Expr.Call{name: "reltimerecv", arguments: [var1]}
  end
  @doc("I/O")
  def(reltimesend(var1)) do
    %Sonata.Expr.Call{name: "reltimesend", arguments: [var1]}
  end
  @doc("replicate string n times")
  def(repeat(var1, var2)) do
    %Sonata.Expr.Call{name: "repeat", arguments: [var1, var2]}
  end
  @doc("replace all occurrences in string of old_substr with new_substr")
  def(replace(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "replace", arguments: [var1, var2, var3]}
  end
  @doc("reverse text")
  def(reverse(var1)) do
    %Sonata.Expr.Call{name: "reverse", arguments: [var1]}
  end
  @doc("extract the last n characters")
  def(right(var1, var2)) do
    %Sonata.Expr.Call{name: "right", arguments: [var1, var2]}
  end
  @doc("value rounded to 'scale' of zero")
  def(round(var1)) do
    %Sonata.Expr.Call{name: "round", arguments: [var1]}
  end
  @doc("row number within partition")
  def(row_number()) do
    %Sonata.Expr.Call{name: "row_number", arguments: []}
  end
  @doc("row security for current context active on table by table name")
  def(row_security_active(var1)) do
    %Sonata.Expr.Call{name: "row_security_active", arguments: [var1]}
  end
  @doc("map row to json")
  def(row_to_json(var1)) do
    %Sonata.Expr.Call{name: "row_to_json", arguments: [var1]}
  end
  @doc("right-pad string to length")
  def(rpad(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "rpad", arguments: [var1, var2, var3]}
  end
  @doc("trim selected characters from right end of string")
  def(rtrim(var1, var2)) do
    %Sonata.Expr.Call{name: "rtrim", arguments: [var1, var2]}
  end
  @doc("join selectivity of > and related operators on scalar datatypes")
  def(scalargtjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "scalargtjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of > and related operators on scalar datatypes")
  def(scalargtsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "scalargtsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("join selectivity of < and related operators on scalar datatypes")
  def(scalarltjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "scalarltjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of < and related operators on scalar datatypes")
  def(scalarltsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "scalarltsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("map schema contents to XML")
  def(schema_to_xml(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "schema_to_xml", arguments: [var1, var2, var3, var4]}
  end
  @doc("map schema contents and structure to XML and XML Schema")
  def(schema_to_xml_and_xmlschema(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "schema_to_xml_and_xmlschema", arguments: [var1, var2, var3, var4]}
  end
  @doc("map schema structure to XML Schema")
  def(schema_to_xmlschema(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "schema_to_xmlschema", arguments: [var1, var2, var3, var4]}
  end
  @doc("session user name")
  def(session_user()) do
    %Sonata.Expr.Call{name: "session_user", arguments: []}
  end
  @doc("set bit")
  def(set_bit(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "set_bit", arguments: [var1, var2, var3]}
  end
  @doc("set byte")
  def(set_byte(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "set_byte", arguments: [var1, var2, var3]}
  end
  @doc("SET X as a function")
  def(set_config(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "set_config", arguments: [var1, var2, var3]}
  end
  @doc("change netmask of cidr")
  def(set_masklen(var1, var2)) do
    %Sonata.Expr.Call{name: "set_masklen", arguments: [var1, var2]}
  end
  @doc("set random seed")
  def(setseed(var1)) do
    %Sonata.Expr.Call{name: "setseed", arguments: [var1]}
  end
  @doc("set sequence value and is_called status")
  def(setval(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "setval", arguments: [var1, var2, var3]}
  end
  @doc("set weight of lexeme's entries")
  def(setweight(var1, var2)) do
    %Sonata.Expr.Call{name: "setweight", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(shell_in(var1)) do
    %Sonata.Expr.Call{name: "shell_in", arguments: [var1]}
  end
  @doc("I/O")
  def(shell_out(var1)) do
    %Sonata.Expr.Call{name: "shell_out", arguments: [var1]}
  end
  @doc("internal conversion function for SHIFT_JIS_2004 to EUC_JIS_2004")
  def(shift_jis_2004_to_euc_jis_2004(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "shift_jis_2004_to_euc_jis_2004", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for SHIFT_JIS_2004 to UTF8")
  def(shift_jis_2004_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "shift_jis_2004_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("get description for object id and shared catalog name")
  def(shobj_description(var1, var2)) do
    %Sonata.Expr.Call{name: "shobj_description", arguments: [var1, var2]}
  end
  @doc("sign of value")
  def(sign(var1)) do
    %Sonata.Expr.Call{name: "sign", arguments: [var1]}
  end
  @doc("convert SQL99 regexp pattern to POSIX style")
  def(similar_escape(var1, var2)) do
    %Sonata.Expr.Call{name: "similar_escape", arguments: [var1, var2]}
  end
  @doc("sine")
  def(sin(var1)) do
    %Sonata.Expr.Call{name: "sin", arguments: [var1]}
  end
  @doc("internal conversion function for SJIS to EUC_JP")
  def(sjis_to_euc_jp(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "sjis_to_euc_jp", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for SJIS to MULE_INTERNAL")
  def(sjis_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "sjis_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for SJIS to UTF8")
  def(sjis_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "sjis_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("slope between points")
  def(slope(var1, var2)) do
    %Sonata.Expr.Call{name: "slope", arguments: [var1, var2]}
  end
  @doc("storage manager")
  def(smgreq(var1, var2)) do
    %Sonata.Expr.Call{name: "smgreq", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(smgrin(var1)) do
    %Sonata.Expr.Call{name: "smgrin", arguments: [var1]}
  end
  @doc("storage manager")
  def(smgrne(var1, var2)) do
    %Sonata.Expr.Call{name: "smgrne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(smgrout(var1)) do
    %Sonata.Expr.Call{name: "smgrout", arguments: [var1]}
  end
  @doc("SP-GiST support for k-d tree over point")
  def(spg_kd_choose(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_kd_choose", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for k-d tree over point")
  def(spg_kd_config(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_kd_config", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for k-d tree over point")
  def(spg_kd_inner_consistent(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_kd_inner_consistent", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for k-d tree over point")
  def(spg_kd_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_kd_picksplit", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over point")
  def(spg_quad_choose(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_quad_choose", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over point")
  def(spg_quad_config(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_quad_config", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over point")
  def(spg_quad_inner_consistent(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_quad_inner_consistent", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree and k-d tree over point")
  def(spg_quad_leaf_consistent(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_quad_leaf_consistent", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over point")
  def(spg_quad_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_quad_picksplit", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over range")
  def(spg_range_quad_choose(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_range_quad_choose", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over range")
  def(spg_range_quad_config(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_range_quad_config", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over range")
  def(spg_range_quad_inner_consistent(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_range_quad_inner_consistent", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over range")
  def(spg_range_quad_leaf_consistent(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_range_quad_leaf_consistent", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for quad tree over range")
  def(spg_range_quad_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_range_quad_picksplit", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for radix tree over text")
  def(spg_text_choose(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_text_choose", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for radix tree over text")
  def(spg_text_config(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_text_config", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for radix tree over text")
  def(spg_text_inner_consistent(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_text_inner_consistent", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for radix tree over text")
  def(spg_text_leaf_consistent(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_text_leaf_consistent", arguments: [var1, var2]}
  end
  @doc("SP-GiST support for radix tree over text")
  def(spg_text_picksplit(var1, var2)) do
    %Sonata.Expr.Call{name: "spg_text_picksplit", arguments: [var1, var2]}
  end
  @doc("spgist(internal)")
  def(spgbeginscan(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "spgbeginscan", arguments: [var1, var2, var3]}
  end
  @doc("spgist(internal)")
  def(spgbuild(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "spgbuild", arguments: [var1, var2, var3]}
  end
  @doc("spgist(internal)")
  def(spgbuildempty(var1)) do
    %Sonata.Expr.Call{name: "spgbuildempty", arguments: [var1]}
  end
  @doc("spgist(internal)")
  def(spgbulkdelete(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "spgbulkdelete", arguments: [var1, var2, var3, var4]}
  end
  @doc("spgist(internal)")
  def(spgcanreturn(var1, var2)) do
    %Sonata.Expr.Call{name: "spgcanreturn", arguments: [var1, var2]}
  end
  @doc("spgist(internal)")
  def(spgcostestimate(var1, var2, var3, var4, var5, var6, var7)) do
    %Sonata.Expr.Call{name: "spgcostestimate", arguments: [var1, var2, var3, var4, var5, var6, var7]}
  end
  @doc("spgist(internal)")
  def(spgendscan(var1)) do
    %Sonata.Expr.Call{name: "spgendscan", arguments: [var1]}
  end
  @doc("spgist(internal)")
  def(spggetbitmap(var1, var2)) do
    %Sonata.Expr.Call{name: "spggetbitmap", arguments: [var1, var2]}
  end
  @doc("spgist(internal)")
  def(spggettuple(var1, var2)) do
    %Sonata.Expr.Call{name: "spggettuple", arguments: [var1, var2]}
  end
  @doc("spgist(internal)")
  def(spginsert(var1, var2, var3, var4, var5, var6)) do
    %Sonata.Expr.Call{name: "spginsert", arguments: [var1, var2, var3, var4, var5, var6]}
  end
  @doc("spgist(internal)")
  def(spgmarkpos(var1)) do
    %Sonata.Expr.Call{name: "spgmarkpos", arguments: [var1]}
  end
  @doc("spgist(internal)")
  def(spgoptions(var1, var2)) do
    %Sonata.Expr.Call{name: "spgoptions", arguments: [var1, var2]}
  end
  @doc("spgist(internal)")
  def(spgrescan(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "spgrescan", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("spgist(internal)")
  def(spgrestrpos(var1)) do
    %Sonata.Expr.Call{name: "spgrestrpos", arguments: [var1]}
  end
  @doc("spgist(internal)")
  def(spgvacuumcleanup(var1, var2)) do
    %Sonata.Expr.Call{name: "spgvacuumcleanup", arguments: [var1, var2]}
  end
  @doc("split string by field_sep and return field_num")
  def(split_part(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "split_part", arguments: [var1, var2, var3]}
  end
  @doc("square root")
  def(sqrt(var1)) do
    %Sonata.Expr.Call{name: "sqrt", arguments: [var1]}
  end
  @doc("current statement time")
  def(statement_timestamp()) do
    %Sonata.Expr.Call{name: "statement_timestamp", arguments: []}
  end
  @doc("historical alias for stddev_samp")
  def(stddev(var1)) do
    %Sonata.Expr.Call{name: "stddev", arguments: [var1]}
  end
  @doc("population standard deviation of float8 input values")
  def(stddev_pop(var1)) do
    %Sonata.Expr.Call{name: "stddev_pop", arguments: [var1]}
  end
  @doc("sample standard deviation of bigint input values")
  def(stddev_samp(var1)) do
    %Sonata.Expr.Call{name: "stddev_samp", arguments: [var1]}
  end
  @doc("concatenate aggregate input into a bytea")
  def(string_agg(var1, var2)) do
    %Sonata.Expr.Call{name: "string_agg", arguments: [var1, var2]}
  end
  @doc("aggregate final function")
  def(string_agg_finalfn(var1)) do
    %Sonata.Expr.Call{name: "string_agg_finalfn", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(string_agg_transfn(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "string_agg_transfn", arguments: [var1, var2, var3]}
  end
  @doc("split delimited text into text[], with null string")
  def(string_to_array(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "string_to_array", arguments: [var1, var2, var3]}
  end
  @doc("strip position information")
  def(strip(var1)) do
    %Sonata.Expr.Call{name: "strip", arguments: [var1]}
  end
  @doc("position of substring")
  def(strpos(var1, var2)) do
    %Sonata.Expr.Call{name: "strpos", arguments: [var1, var2]}
  end
  @doc("extract portion of string")
  def(substr(var1, var2)) do
    %Sonata.Expr.Call{name: "substr", arguments: [var1, var2]}
  end
  @doc("extract text matching SQL99 regular expression")
  def(substring(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "substring", arguments: [var1, var2, var3]}
  end
  @doc("sum as money across all money input values")
  def(sum(var1)) do
    %Sonata.Expr.Call{name: "sum", arguments: [var1]}
  end
  @doc("SYSTEM tablesample method handler")
  def(system(var1)) do
    %Sonata.Expr.Call{name: "system", arguments: [var1]}
  end
  @doc("map table contents to XML")
  def(table_to_xml(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "table_to_xml", arguments: [var1, var2, var3, var4]}
  end
  @doc("map table contents and structure to XML and XML Schema")
  def(table_to_xml_and_xmlschema(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "table_to_xml_and_xmlschema", arguments: [var1, var2, var3, var4]}
  end
  @doc("map table structure to XML Schema")
  def(table_to_xmlschema(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "table_to_xmlschema", arguments: [var1, var2, var3, var4]}
  end
  @doc("tangent")
  def(tan(var1)) do
    %Sonata.Expr.Call{name: "tan", arguments: [var1]}
  end
  @doc("convert char to text")
  def(text(var1)) do
    %Sonata.Expr.Call{name: "text", arguments: [var1]}
  end
  @doc("implementation of >= operator")
  def(text_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "text_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(text_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "text_gt", arguments: [var1, var2]}
  end
  @doc("larger of two")
  def(text_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "text_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(text_le(var1, var2)) do
    %Sonata.Expr.Call{name: "text_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(text_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "text_lt", arguments: [var1, var2]}
  end
  @doc("implementation of ~>=~ operator")
  def(text_pattern_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "text_pattern_ge", arguments: [var1, var2]}
  end
  @doc("implementation of ~>~ operator")
  def(text_pattern_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "text_pattern_gt", arguments: [var1, var2]}
  end
  @doc("implementation of ~<=~ operator")
  def(text_pattern_le(var1, var2)) do
    %Sonata.Expr.Call{name: "text_pattern_le", arguments: [var1, var2]}
  end
  @doc("implementation of ~<~ operator")
  def(text_pattern_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "text_pattern_lt", arguments: [var1, var2]}
  end
  @doc("smaller of two")
  def(text_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "text_smaller", arguments: [var1, var2]}
  end
  @doc("implementation of || operator")
  def(textanycat(var1, var2)) do
    %Sonata.Expr.Call{name: "textanycat", arguments: [var1, var2]}
  end
  @doc("implementation of || operator")
  def(textcat(var1, var2)) do
    %Sonata.Expr.Call{name: "textcat", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(texteq(var1, var2)) do
    %Sonata.Expr.Call{name: "texteq", arguments: [var1, var2]}
  end
  @doc("implementation of ~~* operator")
  def(texticlike(var1, var2)) do
    %Sonata.Expr.Call{name: "texticlike", arguments: [var1, var2]}
  end
  @doc("implementation of !~~* operator")
  def(texticnlike(var1, var2)) do
    %Sonata.Expr.Call{name: "texticnlike", arguments: [var1, var2]}
  end
  @doc("implementation of ~* operator")
  def(texticregexeq(var1, var2)) do
    %Sonata.Expr.Call{name: "texticregexeq", arguments: [var1, var2]}
  end
  @doc("implementation of !~* operator")
  def(texticregexne(var1, var2)) do
    %Sonata.Expr.Call{name: "texticregexne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(textin(var1)) do
    %Sonata.Expr.Call{name: "textin", arguments: [var1]}
  end
  @doc("length")
  def(textlen(var1)) do
    %Sonata.Expr.Call{name: "textlen", arguments: [var1]}
  end
  @doc("implementation of ~~ operator")
  def(textlike(var1, var2)) do
    %Sonata.Expr.Call{name: "textlike", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(textne(var1, var2)) do
    %Sonata.Expr.Call{name: "textne", arguments: [var1, var2]}
  end
  @doc("implementation of !~~ operator")
  def(textnlike(var1, var2)) do
    %Sonata.Expr.Call{name: "textnlike", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(textout(var1)) do
    %Sonata.Expr.Call{name: "textout", arguments: [var1]}
  end
  @doc("I/O")
  def(textrecv(var1)) do
    %Sonata.Expr.Call{name: "textrecv", arguments: [var1]}
  end
  @doc("implementation of ~ operator")
  def(textregexeq(var1, var2)) do
    %Sonata.Expr.Call{name: "textregexeq", arguments: [var1, var2]}
  end
  @doc("implementation of !~ operator")
  def(textregexne(var1, var2)) do
    %Sonata.Expr.Call{name: "textregexne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(textsend(var1)) do
    %Sonata.Expr.Call{name: "textsend", arguments: [var1]}
  end
  @doc("(internal)")
  def(thesaurus_init(var1)) do
    %Sonata.Expr.Call{name: "thesaurus_init", arguments: [var1]}
  end
  @doc("(internal)")
  def(thesaurus_lexize(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "thesaurus_lexize", arguments: [var1, var2, var3, var4]}
  end
  @doc("implementation of = operator")
  def(tideq(var1, var2)) do
    %Sonata.Expr.Call{name: "tideq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(tidge(var1, var2)) do
    %Sonata.Expr.Call{name: "tidge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(tidgt(var1, var2)) do
    %Sonata.Expr.Call{name: "tidgt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tidin(var1)) do
    %Sonata.Expr.Call{name: "tidin", arguments: [var1]}
  end
  @doc("larger of two")
  def(tidlarger(var1, var2)) do
    %Sonata.Expr.Call{name: "tidlarger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(tidle(var1, var2)) do
    %Sonata.Expr.Call{name: "tidle", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(tidlt(var1, var2)) do
    %Sonata.Expr.Call{name: "tidlt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(tidne(var1, var2)) do
    %Sonata.Expr.Call{name: "tidne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tidout(var1)) do
    %Sonata.Expr.Call{name: "tidout", arguments: [var1]}
  end
  @doc("I/O")
  def(tidrecv(var1)) do
    %Sonata.Expr.Call{name: "tidrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(tidsend(var1)) do
    %Sonata.Expr.Call{name: "tidsend", arguments: [var1]}
  end
  @doc("smaller of two")
  def(tidsmaller(var1, var2)) do
    %Sonata.Expr.Call{name: "tidsmaller", arguments: [var1, var2]}
  end
  @doc("convert timestamp to time")
  def(time(var1)) do
    %Sonata.Expr.Call{name: "time", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(time_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "time_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(time_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "time_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(time_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "time_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(time_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "time_gt", arguments: [var1, var2]}
  end
  @doc("hash")
  def(time_hash(var1)) do
    %Sonata.Expr.Call{name: "time_hash", arguments: [var1]}
  end
  @doc("I/O")
  def(time_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "time_in", arguments: [var1, var2, var3]}
  end
  @doc("larger of two")
  def(time_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "time_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(time_le(var1, var2)) do
    %Sonata.Expr.Call{name: "time_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(time_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "time_lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(time_mi_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "time_mi_interval", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(time_mi_time(var1, var2)) do
    %Sonata.Expr.Call{name: "time_mi_time", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(time_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "time_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(time_out(var1)) do
    %Sonata.Expr.Call{name: "time_out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(time_pl_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "time_pl_interval", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(time_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "time_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(time_send(var1)) do
    %Sonata.Expr.Call{name: "time_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(time_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "time_smaller", arguments: [var1, var2]}
  end
  @doc("transform a time length coercion")
  def(time_transform(var1)) do
    %Sonata.Expr.Call{name: "time_transform", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(timedate_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "timedate_pl", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(timemi(var1, var2)) do
    %Sonata.Expr.Call{name: "timemi", arguments: [var1, var2]}
  end
  @doc("current date and time (abstime)")
  def(timenow()) do
    %Sonata.Expr.Call{name: "timenow", arguments: []}
  end
  @doc("current date and time - increments during transactions")
  def(timeofday()) do
    %Sonata.Expr.Call{name: "timeofday", arguments: []}
  end
  @doc("implementation of + operator")
  def(timepl(var1, var2)) do
    %Sonata.Expr.Call{name: "timepl", arguments: [var1, var2]}
  end
  @doc("adjust timestamp precision")
  def(timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(timestamp_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(timestamp_cmp_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_cmp_date", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(timestamp_cmp_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_cmp_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(timestamp_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_eq", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(timestamp_eq_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_eq_date", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(timestamp_eq_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_eq_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(timestamp_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_ge", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(timestamp_ge_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_ge_date", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(timestamp_ge_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_ge_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(timestamp_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_gt", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(timestamp_gt_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_gt_date", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(timestamp_gt_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_gt_timestamptz", arguments: [var1, var2]}
  end
  @doc("hash")
  def(timestamp_hash(var1)) do
    %Sonata.Expr.Call{name: "timestamp_hash", arguments: [var1]}
  end
  @doc("I/O")
  def(timestamp_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "timestamp_in", arguments: [var1, var2, var3]}
  end
  @doc("transform a time zone adjustment")
  def(timestamp_izone_transform(var1)) do
    %Sonata.Expr.Call{name: "timestamp_izone_transform", arguments: [var1]}
  end
  @doc("larger of two")
  def(timestamp_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(timestamp_le(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_le", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(timestamp_le_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_le_date", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(timestamp_le_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_le_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(timestamp_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_lt", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(timestamp_lt_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_lt_date", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(timestamp_lt_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_lt_timestamptz", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(timestamp_mi(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_mi", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(timestamp_mi_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_mi_interval", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(timestamp_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_ne", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(timestamp_ne_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_ne_date", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(timestamp_ne_timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_ne_timestamptz", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(timestamp_out(var1)) do
    %Sonata.Expr.Call{name: "timestamp_out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(timestamp_pl_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_pl_interval", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(timestamp_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "timestamp_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(timestamp_send(var1)) do
    %Sonata.Expr.Call{name: "timestamp_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(timestamp_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamp_smaller", arguments: [var1, var2]}
  end
  @doc("sort support")
  def(timestamp_sortsupport(var1)) do
    %Sonata.Expr.Call{name: "timestamp_sortsupport", arguments: [var1]}
  end
  @doc("transform a timestamp length coercion")
  def(timestamp_transform(var1)) do
    %Sonata.Expr.Call{name: "timestamp_transform", arguments: [var1]}
  end
  @doc("transform a time zone adjustment")
  def(timestamp_zone_transform(var1)) do
    %Sonata.Expr.Call{name: "timestamp_zone_transform", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(timestamptypmodin(var1)) do
    %Sonata.Expr.Call{name: "timestamptypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(timestamptypmodout(var1)) do
    %Sonata.Expr.Call{name: "timestamptypmodout", arguments: [var1]}
  end
  @doc("convert date and time with time zone to timestamp with time zone")
  def(timestamptz(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(timestamptz_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_cmp", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(timestamptz_cmp_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_cmp_date", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(timestamptz_cmp_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_cmp_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(timestamptz_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_eq", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(timestamptz_eq_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_eq_date", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(timestamptz_eq_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_eq_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(timestamptz_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_ge", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(timestamptz_ge_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_ge_date", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(timestamptz_ge_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_ge_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(timestamptz_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_gt", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(timestamptz_gt_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_gt_date", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(timestamptz_gt_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_gt_timestamp", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(timestamptz_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "timestamptz_in", arguments: [var1, var2, var3]}
  end
  @doc("larger of two")
  def(timestamptz_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(timestamptz_le(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_le", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(timestamptz_le_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_le_date", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(timestamptz_le_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_le_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(timestamptz_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_lt", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(timestamptz_lt_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_lt_date", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(timestamptz_lt_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_lt_timestamp", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(timestamptz_mi(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_mi", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(timestamptz_mi_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_mi_interval", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(timestamptz_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_ne", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(timestamptz_ne_date(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_ne_date", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(timestamptz_ne_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_ne_timestamp", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(timestamptz_out(var1)) do
    %Sonata.Expr.Call{name: "timestamptz_out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(timestamptz_pl_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_pl_interval", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(timestamptz_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "timestamptz_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(timestamptz_send(var1)) do
    %Sonata.Expr.Call{name: "timestamptz_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(timestamptz_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "timestamptz_smaller", arguments: [var1, var2]}
  end
  @doc("I/O typmod")
  def(timestamptztypmodin(var1)) do
    %Sonata.Expr.Call{name: "timestamptztypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(timestamptztypmodout(var1)) do
    %Sonata.Expr.Call{name: "timestamptztypmodout", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(timetypmodin(var1)) do
    %Sonata.Expr.Call{name: "timetypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(timetypmodout(var1)) do
    %Sonata.Expr.Call{name: "timetypmodout", arguments: [var1]}
  end
  @doc("adjust time with time zone precision")
  def(timetz(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(timetz_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(timetz_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(timetz_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(timetz_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_gt", arguments: [var1, var2]}
  end
  @doc("hash")
  def(timetz_hash(var1)) do
    %Sonata.Expr.Call{name: "timetz_hash", arguments: [var1]}
  end
  @doc("I/O")
  def(timetz_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "timetz_in", arguments: [var1, var2, var3]}
  end
  @doc("larger of two")
  def(timetz_larger(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_larger", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(timetz_le(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(timetz_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_lt", arguments: [var1, var2]}
  end
  @doc("implementation of - operator")
  def(timetz_mi_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_mi_interval", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(timetz_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(timetz_out(var1)) do
    %Sonata.Expr.Call{name: "timetz_out", arguments: [var1]}
  end
  @doc("implementation of + operator")
  def(timetz_pl_interval(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_pl_interval", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(timetz_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "timetz_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(timetz_send(var1)) do
    %Sonata.Expr.Call{name: "timetz_send", arguments: [var1]}
  end
  @doc("smaller of two")
  def(timetz_smaller(var1, var2)) do
    %Sonata.Expr.Call{name: "timetz_smaller", arguments: [var1, var2]}
  end
  @doc("implementation of + operator")
  def(timetzdate_pl(var1, var2)) do
    %Sonata.Expr.Call{name: "timetzdate_pl", arguments: [var1, var2]}
  end
  @doc("I/O typmod")
  def(timetztypmodin(var1)) do
    %Sonata.Expr.Call{name: "timetztypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(timetztypmodout(var1)) do
    %Sonata.Expr.Call{name: "timetztypmodout", arguments: [var1]}
  end
  @doc("adjust time with time zone to new zone")
  def(timezone(var1, var2)) do
    %Sonata.Expr.Call{name: "timezone", arguments: [var1, var2]}
  end
  @doc("convert to tinterval")
  def(tinterval(var1, var2)) do
    %Sonata.Expr.Call{name: "tinterval", arguments: [var1, var2]}
  end
  @doc("implementation of << operator")
  def(tintervalct(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalct", arguments: [var1, var2]}
  end
  @doc("end of interval")
  def(tintervalend(var1)) do
    %Sonata.Expr.Call{name: "tintervalend", arguments: [var1]}
  end
  @doc("implementation of = operator")
  def(tintervaleq(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervaleq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(tintervalge(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(tintervalgt(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalgt", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tintervalin(var1)) do
    %Sonata.Expr.Call{name: "tintervalin", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(tintervalle(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalle", arguments: [var1, var2]}
  end
  @doc("implementation of #= operator")
  def(tintervalleneq(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalleneq", arguments: [var1, var2]}
  end
  @doc("implementation of #>= operator")
  def(tintervallenge(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervallenge", arguments: [var1, var2]}
  end
  @doc("implementation of #> operator")
  def(tintervallengt(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervallengt", arguments: [var1, var2]}
  end
  @doc("implementation of #<= operator")
  def(tintervallenle(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervallenle", arguments: [var1, var2]}
  end
  @doc("implementation of #< operator")
  def(tintervallenlt(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervallenlt", arguments: [var1, var2]}
  end
  @doc("implementation of #<> operator")
  def(tintervallenne(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervallenne", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(tintervallt(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervallt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(tintervalne(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tintervalout(var1)) do
    %Sonata.Expr.Call{name: "tintervalout", arguments: [var1]}
  end
  @doc("implementation of && operator")
  def(tintervalov(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalov", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tintervalrecv(var1)) do
    %Sonata.Expr.Call{name: "tintervalrecv", arguments: [var1]}
  end
  @doc("tinterval to reltime")
  def(tintervalrel(var1)) do
    %Sonata.Expr.Call{name: "tintervalrel", arguments: [var1]}
  end
  @doc("implementation of ~= operator")
  def(tintervalsame(var1, var2)) do
    %Sonata.Expr.Call{name: "tintervalsame", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tintervalsend(var1)) do
    %Sonata.Expr.Call{name: "tintervalsend", arguments: [var1]}
  end
  @doc("implementation of | operator")
  def(tintervalstart(var1)) do
    %Sonata.Expr.Call{name: "tintervalstart", arguments: [var1]}
  end
  @doc("encode text from encoding to ASCII text")
  def(to_ascii(var1, var2)) do
    %Sonata.Expr.Call{name: "to_ascii", arguments: [var1, var2]}
  end
  @doc("format int4 to text")
  def(to_char(var1, var2)) do
    %Sonata.Expr.Call{name: "to_char", arguments: [var1, var2]}
  end
  @doc("convert text to date")
  def(to_date(var1, var2)) do
    %Sonata.Expr.Call{name: "to_date", arguments: [var1, var2]}
  end
  @doc("convert int4 number to hex")
  def(to_hex(var1)) do
    %Sonata.Expr.Call{name: "to_hex", arguments: [var1]}
  end
  @doc("map input to json")
  def(to_json(var1)) do
    %Sonata.Expr.Call{name: "to_json", arguments: [var1]}
  end
  @doc("map input to jsonb")
  def(to_jsonb(var1)) do
    %Sonata.Expr.Call{name: "to_jsonb", arguments: [var1]}
  end
  @doc("convert text to numeric")
  def(to_number(var1, var2)) do
    %Sonata.Expr.Call{name: "to_number", arguments: [var1, var2]}
  end
  @doc("convert classname to regclass")
  def(to_regclass(var1)) do
    %Sonata.Expr.Call{name: "to_regclass", arguments: [var1]}
  end
  @doc("convert namespace name to regnamespace")
  def(to_regnamespace(var1)) do
    %Sonata.Expr.Call{name: "to_regnamespace", arguments: [var1]}
  end
  @doc("convert operator name to regoper")
  def(to_regoper(var1)) do
    %Sonata.Expr.Call{name: "to_regoper", arguments: [var1]}
  end
  @doc("convert operator name to regoperator")
  def(to_regoperator(var1)) do
    %Sonata.Expr.Call{name: "to_regoperator", arguments: [var1]}
  end
  @doc("convert proname to regproc")
  def(to_regproc(var1)) do
    %Sonata.Expr.Call{name: "to_regproc", arguments: [var1]}
  end
  @doc("convert proname to regprocedure")
  def(to_regprocedure(var1)) do
    %Sonata.Expr.Call{name: "to_regprocedure", arguments: [var1]}
  end
  @doc("convert role name to regrole")
  def(to_regrole(var1)) do
    %Sonata.Expr.Call{name: "to_regrole", arguments: [var1]}
  end
  @doc("convert type name to regtype")
  def(to_regtype(var1)) do
    %Sonata.Expr.Call{name: "to_regtype", arguments: [var1]}
  end
  @doc("convert text to timestamp with time zone")
  def(to_timestamp(var1, var2)) do
    %Sonata.Expr.Call{name: "to_timestamp", arguments: [var1, var2]}
  end
  @doc("make tsquery")
  def(to_tsquery(var1, var2)) do
    %Sonata.Expr.Call{name: "to_tsquery", arguments: [var1, var2]}
  end
  @doc("transform to tsvector")
  def(to_tsvector(var1, var2)) do
    %Sonata.Expr.Call{name: "to_tsvector", arguments: [var1, var2]}
  end
  @doc("current transaction time")
  def(transaction_timestamp()) do
    %Sonata.Expr.Call{name: "transaction_timestamp", arguments: []}
  end
  @doc("map a set of characters appearing in string")
  def(translate(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "translate", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(trigger_out(var1)) do
    %Sonata.Expr.Call{name: "trigger_out", arguments: [var1]}
  end
  @doc("MAC manufacturer fields")
  def(trunc(var1)) do
    %Sonata.Expr.Call{name: "trunc", arguments: [var1]}
  end
  @doc("debug function for text search configuration")
  def(ts_debug(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_debug", arguments: [var1, var2]}
  end
  @doc("generate headline")
  def(ts_headline(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_headline", arguments: [var1, var2]}
  end
  @doc("normalize one word by dictionary")
  def(ts_lexize(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_lexize", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(ts_match_qv(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_match_qv", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(ts_match_tq(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_match_tq", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(ts_match_tt(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_match_tt", arguments: [var1, var2]}
  end
  @doc("implementation of @@ operator")
  def(ts_match_vq(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_match_vq", arguments: [var1, var2]}
  end
  @doc("parse text to tokens")
  def(ts_parse(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_parse", arguments: [var1, var2]}
  end
  @doc("relevance")
  def(ts_rank(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "ts_rank", arguments: [var1, var2, var3]}
  end
  @doc("relevance")
  def(ts_rank_cd(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "ts_rank_cd", arguments: [var1, var2, var3]}
  end
  @doc("rewrite tsquery")
  def(ts_rewrite(var1, var2)) do
    %Sonata.Expr.Call{name: "ts_rewrite", arguments: [var1, var2]}
  end
  @doc("statistics of tsvector column")
  def(ts_stat(var1)) do
    %Sonata.Expr.Call{name: "ts_stat", arguments: [var1]}
  end
  @doc("get parser's token types")
  def(ts_token_type(var1)) do
    %Sonata.Expr.Call{name: "ts_token_type", arguments: [var1]}
  end
  @doc("tsvector typanalyze")
  def(ts_typanalyze(var1)) do
    %Sonata.Expr.Call{name: "ts_typanalyze", arguments: [var1]}
  end
  @doc("I/O")
  def(tsm_handler_in(var1)) do
    %Sonata.Expr.Call{name: "tsm_handler_in", arguments: [var1]}
  end
  @doc("I/O")
  def(tsm_handler_out(var1)) do
    %Sonata.Expr.Call{name: "tsm_handler_out", arguments: [var1]}
  end
  @doc("join selectivity of tsvector @@ tsquery")
  def(tsmatchjoinsel(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "tsmatchjoinsel", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("restriction selectivity of tsvector @@ tsquery")
  def(tsmatchsel(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "tsmatchsel", arguments: [var1, var2, var3, var4]}
  end
  @doc("implementation of <@ operator")
  def(tsq_mcontained(var1, var2)) do
    %Sonata.Expr.Call{name: "tsq_mcontained", arguments: [var1, var2]}
  end
  @doc("implementation of @> operator")
  def(tsq_mcontains(var1, var2)) do
    %Sonata.Expr.Call{name: "tsq_mcontains", arguments: [var1, var2]}
  end
  @doc("implementation of && operator")
  def(tsquery_and(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_and", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(tsquery_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(tsquery_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(tsquery_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(tsquery_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(tsquery_le(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(tsquery_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(tsquery_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_ne", arguments: [var1, var2]}
  end
  @doc("implementation of !! operator")
  def(tsquery_not(var1)) do
    %Sonata.Expr.Call{name: "tsquery_not", arguments: [var1]}
  end
  @doc("implementation of || operator")
  def(tsquery_or(var1, var2)) do
    %Sonata.Expr.Call{name: "tsquery_or", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tsqueryin(var1)) do
    %Sonata.Expr.Call{name: "tsqueryin", arguments: [var1]}
  end
  @doc("I/O")
  def(tsqueryout(var1)) do
    %Sonata.Expr.Call{name: "tsqueryout", arguments: [var1]}
  end
  @doc("I/O")
  def(tsqueryrecv(var1)) do
    %Sonata.Expr.Call{name: "tsqueryrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(tsquerysend(var1)) do
    %Sonata.Expr.Call{name: "tsquerysend", arguments: [var1]}
  end
  @doc("tsrange constructor")
  def(tsrange(var1, var2)) do
    %Sonata.Expr.Call{name: "tsrange", arguments: [var1, var2]}
  end
  @doc("float8 difference of two timestamp values")
  def(tsrange_subdiff(var1, var2)) do
    %Sonata.Expr.Call{name: "tsrange_subdiff", arguments: [var1, var2]}
  end
  @doc("tstzrange constructor")
  def(tstzrange(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "tstzrange", arguments: [var1, var2, var3]}
  end
  @doc("float8 difference of two timestamp with time zone values")
  def(tstzrange_subdiff(var1, var2)) do
    %Sonata.Expr.Call{name: "tstzrange_subdiff", arguments: [var1, var2]}
  end
  @doc("less-equal-greater")
  def(tsvector_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of || operator")
  def(tsvector_concat(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_concat", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(tsvector_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(tsvector_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(tsvector_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_gt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(tsvector_le(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(tsvector_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(tsvector_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "tsvector_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(tsvectorin(var1)) do
    %Sonata.Expr.Call{name: "tsvectorin", arguments: [var1]}
  end
  @doc("I/O")
  def(tsvectorout(var1)) do
    %Sonata.Expr.Call{name: "tsvectorout", arguments: [var1]}
  end
  @doc("I/O")
  def(tsvectorrecv(var1)) do
    %Sonata.Expr.Call{name: "tsvectorrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(tsvectorsend(var1)) do
    %Sonata.Expr.Call{name: "tsvectorsend", arguments: [var1]}
  end
  @doc("get current transaction ID")
  def(txid_current()) do
    %Sonata.Expr.Call{name: "txid_current", arguments: []}
  end
  @doc("get current snapshot")
  def(txid_current_snapshot()) do
    %Sonata.Expr.Call{name: "txid_current_snapshot", arguments: []}
  end
  @doc("I/O")
  def(txid_snapshot_in(var1)) do
    %Sonata.Expr.Call{name: "txid_snapshot_in", arguments: [var1]}
  end
  @doc("I/O")
  def(txid_snapshot_out(var1)) do
    %Sonata.Expr.Call{name: "txid_snapshot_out", arguments: [var1]}
  end
  @doc("I/O")
  def(txid_snapshot_recv(var1)) do
    %Sonata.Expr.Call{name: "txid_snapshot_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(txid_snapshot_send(var1)) do
    %Sonata.Expr.Call{name: "txid_snapshot_send", arguments: [var1]}
  end
  @doc("get set of in-progress txids in snapshot")
  def(txid_snapshot_xip(var1)) do
    %Sonata.Expr.Call{name: "txid_snapshot_xip", arguments: [var1]}
  end
  @doc("get xmax of snapshot")
  def(txid_snapshot_xmax(var1)) do
    %Sonata.Expr.Call{name: "txid_snapshot_xmax", arguments: [var1]}
  end
  @doc("get xmin of snapshot")
  def(txid_snapshot_xmin(var1)) do
    %Sonata.Expr.Call{name: "txid_snapshot_xmin", arguments: [var1]}
  end
  @doc("is txid visible in snapshot?")
  def(txid_visible_in_snapshot(var1, var2)) do
    %Sonata.Expr.Call{name: "txid_visible_in_snapshot", arguments: [var1, var2]}
  end
  @doc("internal conversion function for UHC to UTF8")
  def(uhc_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "uhc_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("I/O")
  def(unknownin(var1)) do
    %Sonata.Expr.Call{name: "unknownin", arguments: [var1]}
  end
  @doc("I/O")
  def(unknownout(var1)) do
    %Sonata.Expr.Call{name: "unknownout", arguments: [var1]}
  end
  @doc("I/O")
  def(unknownrecv(var1)) do
    %Sonata.Expr.Call{name: "unknownrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(unknownsend(var1)) do
    %Sonata.Expr.Call{name: "unknownsend", arguments: [var1]}
  end
  @doc("expand array to set of rows")
  def(unnest(var1)) do
    %Sonata.Expr.Call{name: "unnest", arguments: [var1]}
  end
  @doc("upper bound of range")
  def(upper(var1)) do
    %Sonata.Expr.Call{name: "upper", arguments: [var1]}
  end
  @doc("is the range's upper bound inclusive?")
  def(upper_inc(var1)) do
    %Sonata.Expr.Call{name: "upper_inc", arguments: [var1]}
  end
  @doc("is the range's upper bound infinite?")
  def(upper_inf(var1)) do
    %Sonata.Expr.Call{name: "upper_inf", arguments: [var1]}
  end
  @doc("internal conversion function for UTF8 to SQL_ASCII")
  def(utf8_to_ascii(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_ascii", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to BIG5")
  def(utf8_to_big5(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_big5", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to EUC_CN")
  def(utf8_to_euc_cn(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_euc_cn", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to EUC_JIS_2004")
  def(utf8_to_euc_jis_2004(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_euc_jis_2004", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to EUC_JP")
  def(utf8_to_euc_jp(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_euc_jp", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to EUC_KR")
  def(utf8_to_euc_kr(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_euc_kr", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to EUC_TW")
  def(utf8_to_euc_tw(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_euc_tw", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to GB18030")
  def(utf8_to_gb18030(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_gb18030", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to GBK")
  def(utf8_to_gbk(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_gbk", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to ISO-8859-8")
  def(utf8_to_iso8859(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_iso8859", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to LATIN1")
  def(utf8_to_iso8859_1(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_iso8859_1", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to JOHAB")
  def(utf8_to_johab(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_johab", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to KOI8R")
  def(utf8_to_koi8r(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_koi8r", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to KOI8U")
  def(utf8_to_koi8u(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_koi8u", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to SHIFT_JIS_2004")
  def(utf8_to_shift_jis_2004(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_shift_jis_2004", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to SJIS")
  def(utf8_to_sjis(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_sjis", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to UHC")
  def(utf8_to_uhc(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_uhc", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for UTF8 to WIN1258")
  def(utf8_to_win(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "utf8_to_win", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("less-equal-greater")
  def(uuid_cmp(var1, var2)) do
    %Sonata.Expr.Call{name: "uuid_cmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(uuid_eq(var1, var2)) do
    %Sonata.Expr.Call{name: "uuid_eq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(uuid_ge(var1, var2)) do
    %Sonata.Expr.Call{name: "uuid_ge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(uuid_gt(var1, var2)) do
    %Sonata.Expr.Call{name: "uuid_gt", arguments: [var1, var2]}
  end
  @doc("hash")
  def(uuid_hash(var1)) do
    %Sonata.Expr.Call{name: "uuid_hash", arguments: [var1]}
  end
  @doc("I/O")
  def(uuid_in(var1)) do
    %Sonata.Expr.Call{name: "uuid_in", arguments: [var1]}
  end
  @doc("implementation of <= operator")
  def(uuid_le(var1, var2)) do
    %Sonata.Expr.Call{name: "uuid_le", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(uuid_lt(var1, var2)) do
    %Sonata.Expr.Call{name: "uuid_lt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(uuid_ne(var1, var2)) do
    %Sonata.Expr.Call{name: "uuid_ne", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(uuid_out(var1)) do
    %Sonata.Expr.Call{name: "uuid_out", arguments: [var1]}
  end
  @doc("I/O")
  def(uuid_recv(var1)) do
    %Sonata.Expr.Call{name: "uuid_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(uuid_send(var1)) do
    %Sonata.Expr.Call{name: "uuid_send", arguments: [var1]}
  end
  @doc("population variance of float8 input values (square of the population standard deviation)")
  def(var_pop(var1)) do
    %Sonata.Expr.Call{name: "var_pop", arguments: [var1]}
  end
  @doc("sample variance of smallint input values (square of the sample standard deviation)")
  def(var_samp(var1)) do
    %Sonata.Expr.Call{name: "var_samp", arguments: [var1]}
  end
  @doc("adjust varbit() to typmod length")
  def(varbit(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "varbit", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(varbit_in(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "varbit_in", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(varbit_out(var1)) do
    %Sonata.Expr.Call{name: "varbit_out", arguments: [var1]}
  end
  @doc("I/O")
  def(varbit_recv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "varbit_recv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(varbit_send(var1)) do
    %Sonata.Expr.Call{name: "varbit_send", arguments: [var1]}
  end
  @doc("transform a varbit length coercion")
  def(varbit_transform(var1)) do
    %Sonata.Expr.Call{name: "varbit_transform", arguments: [var1]}
  end
  @doc("less-equal-greater")
  def(varbitcmp(var1, var2)) do
    %Sonata.Expr.Call{name: "varbitcmp", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(varbiteq(var1, var2)) do
    %Sonata.Expr.Call{name: "varbiteq", arguments: [var1, var2]}
  end
  @doc("implementation of >= operator")
  def(varbitge(var1, var2)) do
    %Sonata.Expr.Call{name: "varbitge", arguments: [var1, var2]}
  end
  @doc("implementation of > operator")
  def(varbitgt(var1, var2)) do
    %Sonata.Expr.Call{name: "varbitgt", arguments: [var1, var2]}
  end
  @doc("implementation of <= operator")
  def(varbitle(var1, var2)) do
    %Sonata.Expr.Call{name: "varbitle", arguments: [var1, var2]}
  end
  @doc("implementation of < operator")
  def(varbitlt(var1, var2)) do
    %Sonata.Expr.Call{name: "varbitlt", arguments: [var1, var2]}
  end
  @doc("implementation of <> operator")
  def(varbitne(var1, var2)) do
    %Sonata.Expr.Call{name: "varbitne", arguments: [var1, var2]}
  end
  @doc("I/O typmod")
  def(varbittypmodin(var1)) do
    %Sonata.Expr.Call{name: "varbittypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(varbittypmodout(var1)) do
    %Sonata.Expr.Call{name: "varbittypmodout", arguments: [var1]}
  end
  @doc("adjust varchar() to typmod length")
  def(varchar(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "varchar", arguments: [var1, var2, var3]}
  end
  @doc("transform a varchar length coercion")
  def(varchar_transform(var1)) do
    %Sonata.Expr.Call{name: "varchar_transform", arguments: [var1]}
  end
  @doc("I/O")
  def(varcharin(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "varcharin", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(varcharout(var1)) do
    %Sonata.Expr.Call{name: "varcharout", arguments: [var1]}
  end
  @doc("I/O")
  def(varcharrecv(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "varcharrecv", arguments: [var1, var2, var3]}
  end
  @doc("I/O")
  def(varcharsend(var1)) do
    %Sonata.Expr.Call{name: "varcharsend", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(varchartypmodin(var1)) do
    %Sonata.Expr.Call{name: "varchartypmodin", arguments: [var1]}
  end
  @doc("I/O typmod")
  def(varchartypmodout(var1)) do
    %Sonata.Expr.Call{name: "varchartypmodout", arguments: [var1]}
  end
  @doc("historical alias for var_samp")
  def(variance(var1)) do
    %Sonata.Expr.Call{name: "variance", arguments: [var1]}
  end
  @doc("PostgreSQL version string")
  def(version()) do
    %Sonata.Expr.Call{name: "version", arguments: []}
  end
  @doc("I/O")
  def(void_in(var1)) do
    %Sonata.Expr.Call{name: "void_in", arguments: [var1]}
  end
  @doc("I/O")
  def(void_out(var1)) do
    %Sonata.Expr.Call{name: "void_out", arguments: [var1]}
  end
  @doc("I/O")
  def(void_recv(var1)) do
    %Sonata.Expr.Call{name: "void_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(void_send(var1)) do
    %Sonata.Expr.Call{name: "void_send", arguments: [var1]}
  end
  @doc("box width")
  def(width(var1)) do
    %Sonata.Expr.Call{name: "width", arguments: [var1]}
  end
  @doc("bucket number of operand in equal-width histogram")
  def(width_bucket(var1, var2, var3, var4)) do
    %Sonata.Expr.Call{name: "width_bucket", arguments: [var1, var2, var3, var4]}
  end
  @doc("internal conversion function for WIN1250 to LATIN2")
  def(win1250_to_latin2(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win1250_to_latin2", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN1250 to MULE_INTERNAL")
  def(win1250_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win1250_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN1251 to ISO-8859-5")
  def(win1251_to_iso(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win1251_to_iso", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN1251 to KOI8R")
  def(win1251_to_koi8r(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win1251_to_koi8r", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN1251 to MULE_INTERNAL")
  def(win1251_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win1251_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN1251 to WIN866")
  def(win1251_to_win866(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win1251_to_win866", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN866 to ISO-8859-5")
  def(win866_to_iso(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win866_to_iso", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN866 to KOI8R")
  def(win866_to_koi8r(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win866_to_koi8r", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN866 to MULE_INTERNAL")
  def(win866_to_mic(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win866_to_mic", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN866 to WIN1251")
  def(win866_to_win1251(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win866_to_win1251", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("internal conversion function for WIN1258 to UTF8")
  def(win_to_utf8(var1, var2, var3, var4, var5)) do
    %Sonata.Expr.Call{name: "win_to_utf8", arguments: [var1, var2, var3, var4, var5]}
  end
  @doc("implementation of = operator")
  def(xideq(var1, var2)) do
    %Sonata.Expr.Call{name: "xideq", arguments: [var1, var2]}
  end
  @doc("implementation of = operator")
  def(xideqint4(var1, var2)) do
    %Sonata.Expr.Call{name: "xideqint4", arguments: [var1, var2]}
  end
  @doc("I/O")
  def(xidin(var1)) do
    %Sonata.Expr.Call{name: "xidin", arguments: [var1]}
  end
  @doc("I/O")
  def(xidout(var1)) do
    %Sonata.Expr.Call{name: "xidout", arguments: [var1]}
  end
  @doc("I/O")
  def(xidrecv(var1)) do
    %Sonata.Expr.Call{name: "xidrecv", arguments: [var1]}
  end
  @doc("I/O")
  def(xidsend(var1)) do
    %Sonata.Expr.Call{name: "xidsend", arguments: [var1]}
  end
  @doc("perform a non-validating parse of a character string to produce an XML value")
  def(xml(var1)) do
    %Sonata.Expr.Call{name: "xml", arguments: [var1]}
  end
  @doc("I/O")
  def(xml_in(var1)) do
    %Sonata.Expr.Call{name: "xml_in", arguments: [var1]}
  end
  @doc("determine if a string is well formed XML")
  def(xml_is_well_formed(var1)) do
    %Sonata.Expr.Call{name: "xml_is_well_formed", arguments: [var1]}
  end
  @doc("determine if a string is well formed XML content")
  def(xml_is_well_formed_content(var1)) do
    %Sonata.Expr.Call{name: "xml_is_well_formed_content", arguments: [var1]}
  end
  @doc("determine if a string is well formed XML document")
  def(xml_is_well_formed_document(var1)) do
    %Sonata.Expr.Call{name: "xml_is_well_formed_document", arguments: [var1]}
  end
  @doc("I/O")
  def(xml_out(var1)) do
    %Sonata.Expr.Call{name: "xml_out", arguments: [var1]}
  end
  @doc("I/O")
  def(xml_recv(var1)) do
    %Sonata.Expr.Call{name: "xml_recv", arguments: [var1]}
  end
  @doc("I/O")
  def(xml_send(var1)) do
    %Sonata.Expr.Call{name: "xml_send", arguments: [var1]}
  end
  @doc("concatenate XML values")
  def(xmlagg(var1)) do
    %Sonata.Expr.Call{name: "xmlagg", arguments: [var1]}
  end
  @doc("generate XML comment")
  def(xmlcomment(var1)) do
    %Sonata.Expr.Call{name: "xmlcomment", arguments: [var1]}
  end
  @doc("aggregate transition function")
  def(xmlconcat2(var1, var2)) do
    %Sonata.Expr.Call{name: "xmlconcat2", arguments: [var1, var2]}
  end
  @doc("test XML value against XPath expression")
  def(xmlexists(var1, var2)) do
    %Sonata.Expr.Call{name: "xmlexists", arguments: [var1, var2]}
  end
  @doc("validate an XML value")
  def(xmlvalidate(var1, var2)) do
    %Sonata.Expr.Call{name: "xmlvalidate", arguments: [var1, var2]}
  end
  @doc("evaluate XPath expression")
  def(xpath(var1, var2)) do
    %Sonata.Expr.Call{name: "xpath", arguments: [var1, var2]}
  end
  @doc("test XML value against XPath expression, with namespace support")
  def(xpath_exists(var1, var2, var3)) do
    %Sonata.Expr.Call{name: "xpath_exists", arguments: [var1, var2, var3]}
  end
end