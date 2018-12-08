function [Cmat,DA]= confusion_matrix(predicted,labels)
%This function allows to compute and plot confusion matrix after
%classification process
%Inputs: 
%labels: N by 1 vector of known labels, should be numeric
%classes:  N by 1 vector of pridicted labels
%classes_names: cell array cotaining names of classes Example: {'AWA','S1','S2','SWS','Rem'}
%Ouptputs:
%DA= Decoding accuracy value ie mean diagonal of the confusion matrix
%Cmat: confusion matrix values
classes_names={'Angry','Disgusted','Fear','Happy','Neutral','Sad','Surprised'};


C=confusionmat(labels,predicted);
L=length(unique(labels));
for i=1:L
    Cmat1(i,:)=C(i,:);
    Cmat(i,:)=C(i,:)./sum(C(i,:));
end
figure('visible','on');
imagesc(Cmat);colormap(flipud(summer));caxis([0,1])
textstr=num2str(Cmat1(:),'%d');
textstr=strtrim(cellstr(textstr));
[x,y]=meshgrid(1:L);
hstrg=text(x(:),y(:),textstr(:),'HorizontalAlignment','center','FontSize',16,'FontName','Times New Roman');
midvalue=mean(get(gca,'Clim'));
textColors=repmat(Cmat(:)>midvalue,1,3);
set(hstrg,{'color'},num2cell(textColors,2));
set(gca,'XTick',1:L,'XTickLabel',classes_names,'YTick',1:L,'YTickLabel',classes_names,'TickLength',[0,0],'FontSize',13,'FontName','Times New Roman');
colorbar;
DA=mean(diag(Cmat))*100;
end