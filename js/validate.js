define(function(require){
	return {
		is_mobile:function(v){
			return !/^1[^0129]{1}(\d{9})$/.test(v);
		},
		is_empty:function(v){
			if(v)
				return v.replace(' ','')=='';
			else  return true;
		}
	}
});
