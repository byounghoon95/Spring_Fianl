package com.oracle.S20220602.ksh.repository;

import java.util.List;

import com.oracle.S20220602.common.domain.Common;

public interface A_CatRepository {

	List<Common> listAcat(Common common);

	Common commBcdSelect(int i);

	int adminCatWrite(Common common);

	List<Common> CatList(Common common);

	int total_1900();

}
