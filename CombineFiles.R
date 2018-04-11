#combine files from database

combine_files = function(file1, file2){
	a<-read.csv(paste("Downloaded/",file1,sep=""))
	b<-read.csv(paste("Downloaded/",file2,sep=""))
	lena1<-length(a[,1])
	lenb1<-length(b[,1])
	a<-unique(a[,c("question_id","question","answer","user","oversampled","comments")])
	b<-unique(b[,c("question_id","question","answer","user","oversampled","comments")])
	lena2<-length(a[,1])
	lenb2<-length(b[,1])
	c<-unique(rbind(a,b))
	print(paste(file1,":","originally ",lena1, "of which ",lena2, "are unique"))
	print(paste(file2,":","originally ",lena1, "of which ",lena2, "are unique"))
	print(paste("Result is ",length(c[,1])))
	write.csv(c,file=file1)
}

combine_files("A_Good_World.csv","b_a_AGW.csv")
combine_files("Entropy.csv","b_a_Entropy.csv")
combine_files("Equilibrium.csv","b_a_Equilibrium.csv")
combine_files("Explode_on_Contact.csv","b_a_EOC.csv")
combine_files("Fickle_Folk.csv","b_a_FF.csv")
combine_files("Philosophical_Zombie_Hunter.csv","b_a_PZH.csv")
combine_files("Simon_Says_Freeze.csv","b_a_SSF.csv")
