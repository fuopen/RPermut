permut<-function(seq){
	seq_len=length(seq);
	if(seq_len==1){
		perseq<-seq;
	}
	else{
		if(seq_len==2){
			perseq<-cbind(c(seq[1],seq[2]),c(seq[2],seq[1]));
		}
		else{
			sd<-seq[-1];
			e<-permut(sd);
			perseq<-rbind(seq[1],e);
			for(i in 2:seq_len){
				sd<-seq[-i];
				e<-permut(sd);
				perseq<-cbind(perseq,rbind(seq[i],e));
			}
		}
	}
	perseq;
}
