///@arg tween
///@arg ease
///@arg time
///@arg arg_0*
///@arg arg_1*
function Anim_GetValue() {
	var TWEEN=argument[0];
	var EASE=argument[1];
	var TIME=argument[2];
	var ARG_0=0;
	var ARG_1=0;
	if(argument_count>=4){
		ARG_0=argument[3];
	}
	if(argument_count>=5){
		ARG_1=argument[4];
	}

	var r=0;
	var t=TIME;
	var b=0;
	var c=1;
	var d=1;

	switch(TWEEN){
		case ANIM_TWEEN.LINEAR:
			r=(t/d)*c+b;
			break;
		
		case ANIM_TWEEN.SINE:
			switch(EASE){
				case ANIM_EASE.IN:
					r=-c*cos(t/d*(pi/2))+c+b;
					break;
				case ANIM_EASE.OUT:
					r=c*sin(t/d*(pi/2))+b;
					break;
				case ANIM_EASE.IN_OUT:
					r=-c/2*(cos(pi*t/d)-1)+b;
					break;
			}
			break;
		
		case ANIM_TWEEN.QUAD:
			switch(EASE){
				case ANIM_EASE.IN:
					t/=d;
					r=c*t*t+b;
					break;
				case ANIM_EASE.OUT:
					t/=d;
					r=-c*t*(t-2)+b;
					break;
				case ANIM_EASE.IN_OUT:
					t/=d/2;
					if(t<1){
						r=c/2*t*t+b;
					}else{
						r=-c/2*((--t)*(t-2)-1)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.CUBIC:
			switch(EASE){
				case ANIM_EASE.IN:
					t/=d;
					r=c*t*t*t+b;
					break;
				case ANIM_EASE.OUT:
					t=t/d-1
					r=c*(t*t*t+1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					t/=d/2
					if(t<1){
						r=c/2*t*t*t+b;
					}else{
						t-=2;
						r=c/2*(t*t*t+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.QUART:
			switch(EASE){
				case ANIM_EASE.IN:
					t/=d;
					r=c*t*t*t*t+b;
					break;
				case ANIM_EASE.OUT:
					t=t/d-1;
					r=-c*(t*t*t*t-1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					t/=d/2
					if(t<1){
						r=c/2*t*t*t*t+b;
					}else{
						t-=2;
						r=-c/2*(t*t*t*t-2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.QUINT:
			switch(EASE){
				case ANIM_EASE.IN:
					t/=d;
					r=c*t*t*t*t*t + b;
					break;
				case ANIM_EASE.OUT:
					t=t/d-1;
					r=c*(t*t*t*t*t+1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					t/=d/2
					if(t<1){
						r=c/2*t*t*t*t*t+b;
					}else{
						t-=2;
						r=c/2*(t*t*t*t*t+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.EXPO:
			switch(EASE){
				case ANIM_EASE.IN:
					if(t==0){
						r=b;
					}else{
						r=c*power(2,10*(t/d-1))+b;
					}
					break;
				case ANIM_EASE.OUT:
					if(t==d){
						r=b+c;
					}else{
						r=c * (-power(2,-10*t/d)+1)+b;
					}
					break;
				case ANIM_EASE.IN_OUT:
					if (t==0){
						r=b;
					}
					if(t==d){
						r=b+c;
					}
					t/=d/2;
					if (t<1){
						r=c/2*power(2,10*(t-1))+b;
					}else{
						r=c/2*(-power(2,-10*--t)+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.CIRC:
			switch(EASE){
				case ANIM_EASE.IN:
					t/=d;
					r=-c*(sqrt(1-t*t)-1)+b;
					break;
				case ANIM_EASE.OUT:
					t=t/d-1;
					r=c*sqrt(1-t*t)+b;
					break;
				case ANIM_EASE.IN_OUT:
					t/=d/2;
					if(t<1){
						r=-c/2*(sqrt(1-t*t)-1)+b;
					}else{
						t-=2;
						r=c/2*(sqrt(1-t*t)+1)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.BACK:
			if(ARG_0>0){
				var s=ARG_0;
			}else{
				var s=1.70158;
			}
			switch(EASE){
				case ANIM_EASE.IN:
					t/=d;
					r=c*t*t*((s+1)*t-s)+b;
					break;
				case ANIM_EASE.OUT:
					t=t/d-1;
					r=c*(t*t*((s+1)*t+s)+1)+b;
					break;
				case ANIM_EASE.IN_OUT:
					t/=d/2;
					s*=1.525;
					if(t<1){
						r=c/2*(t*t*((s+1)*t-s))+b;
					}else{
						t-=2;
						r=c/2*(t*t*((s+1)*t+s)+2)+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.ELASTIC:
			var a=ARG_0;
			var p=ARG_1;
			switch(EASE){
				case ANIM_EASE.IN:
					if(t==0){
						r=b;
						break;
					}
					t/=d;
					if(t==1){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*0.3;
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					t-=1;
					r=-(a*power(2,10*t)* sin((t*d-s)*(2*pi)/p))+b;
					break;
				case ANIM_EASE.OUT:
					if(t==0){
						r=b;
						break;
					}
					t/=d;
					if(t==1){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*0.3;
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					r=a*power(2,-10*t)*sin((t*d-s)*(2*pi)/p)+c+b;
					break;
				case ANIM_EASE.IN_OUT:
					if(t==0){
						r=b;
						break;
					}
					t/=d/2;
					if(t==2){
						r=b+c;
						break;
					}
					if(p==0){
						p=d*(0.3*1.5);
					}
					if(a==0||a<abs(c)){
						a=c;
						var s=p/4;
					}else{
						var s=p/(2*pi)*arcsin(c/a);
					}
					t-=1;
					if(t<1){
						r=-0.5*(a*power(2,10*t)*sin((t*d-s)*(2*pi)/p))+b;
					}else{
						r=a*power(2,-10*t)*sin((t*d-s)*(2*pi)/p )*0.5+c+b;
					}
					break;
			}
			break;
		
		case ANIM_TWEEN.BOUNCE:
			switch(EASE){
				case ANIM_EASE.IN:
					t=d-t;
					t/=d;
					if (t<1/2.75){
						r=c*(7.5625*t*t);
					}else if(t<2/2.75){
						t-=1.5/2.75;
						r=c*(7.5625*t*t+0.75);
					}else if(t<2.5/2.75) {
						t-=2.25/2.75;
						r=c*(7.5625*t*t+0.9375);
					}else{
						t-=2.625/2.75;
						r=c*(7.5625*t*t +0.984375);
					}
					r=c-r+b;
					break;
				case ANIM_EASE.OUT:
					t/=d;
					if (t<1/2.75){
						r=c*(7.5625*t*t)+b;
					}else if(t<2/2.75){
						t-=1.5/2.75;
						r=c*(7.5625*t*t+0.75)+b;
					}else if(t<2.5/2.75) {
						t-=2.25/2.75;
						r=c*(7.5625*t*t+0.9375)+b;
					}else{
						t-=2.625/2.75;
						r=c*(7.5625*t*t +0.984375)+b;
					}
					break;
				case ANIM_EASE.IN_OUT:
					var ease_in;
					if(t<d/2){
						t*=2;
						ease_in=true;
					}else{
						t*=2;
						t-=d;
						ease_in=false;
					}
				
					t/=d;
					if (t<1/2.75){
						r=c*(7.5625*t*t);
					}else if(t<2/2.75){
						t-=1.5/2.75;
						r=c*(7.5625*t*t+0.75);
					}else if(t<2.5/2.75) {
						t-=2.25/2.75;
						r=c*(7.5625*t*t+0.9375);
					}else{
						t-=2.625/2.75;
						r=c*(7.5625*t*t +0.984375);
					}
				
					if(ease_in){
						r=r*0.5+b;
					}else{
						r=r*0.5+c*0.5+b;
					}
					break;
			}
			break;
	}

	return r;


}
