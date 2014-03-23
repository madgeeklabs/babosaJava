package es.mgl.babosa;

public aspect SimpleAspect {
	pointcut cut() : 
		call (* *.set*(..));
	after () returning: cut(){
		System.out.println("el get!"+ thisJoinPoint );
		System.out.println("el get!"+ thisJoinPointStaticPart );
		System.out.println("el get!"+ thisJoinPoint.getTarget() );
		//System.err.println(thisEnclosingJoinPointStaticPart.getSourceLocation());
		Object[] args = thisJoinPoint.getArgs();
		System.out.println("param length"+ args.length );
		System.out.println("params"+ args.toString());
		for(Object o: args){
			System.out.println("params"+ o);
				
		}
		
		//System.out.println(obj);Object[] parameterList = thisJoinPoint.getArgs();
	}
}
