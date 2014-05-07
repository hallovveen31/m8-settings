.class Lcom/android/settings/RingerVolume$3;
.super Ljava/lang/Object;
.source "RingerVolume.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingerVolume;->initSeekBarControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolume;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolume;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mLayoutInitFinish:Z
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$600(Lcom/android/settings/RingerVolume;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "RingerVolume"

    const-string v4, "chkBoxView onClick wait for init layout..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v3, p1, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    const-string v3, "RingerVolume"

    const-string v4, "onClick chkBoxView NOT instanceof Checkable!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "RingerVolume"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UseRingVolume Check box click  isChecked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUseRingVolumeAsNotifyVolume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$700()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/settings/RingerVolume;->access$700()Z

    move-result v3

    if-eq v1, v3, :cond_5

    invoke-static {v1}, Lcom/android/settings/RingerVolume;->access$702(Z)Z

    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$800(Lcom/android/settings/RingerVolume;)Landroid/media/AudioManager;

    move-result-object v3

    #calls: Lcom/android/settings/RingerVolume;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V
    invoke-static {v3, v6}, Lcom/android/settings/RingerVolume;->access$900(Landroid/media/AudioManager;I)V

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    iget-object v4, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/settings/RingerVolume;->access$800(Lcom/android/settings/RingerVolume;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    #calls: Lcom/android/settings/RingerVolume;->syncNotificationWithRingerMode(I)V
    invoke-static {v3, v4}, Lcom/android/settings/RingerVolume;->access$1000(Lcom/android/settings/RingerVolume;I)V

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1100()I

    move-result v4

    #calls: Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStatesInternal(I)V
    invoke-static {v3, v4}, Lcom/android/settings/RingerVolume;->access$500(Lcom/android/settings/RingerVolume;I)V

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1100()I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1100()I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1100()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1300(Lcom/android/settings/RingerVolume;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1300(Lcom/android/settings/RingerVolume;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1400()I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1400()I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1400()I

    move-result v4

    aget-object v3, v3, v4

    const v4, 0x7f09001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$700()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1500()[I

    move-result-object v3

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1400()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$800(Lcom/android/settings/RingerVolume;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/android/settings/RingerVolume;->setNotificationUseRingVolume(Landroid/media/AudioManager;I)V
    invoke-static {v3, v4}, Lcom/android/settings/RingerVolume;->access$900(Landroid/media/AudioManager;I)V

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1100()I

    move-result v3

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1100()I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mLayout:[Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1200(Lcom/android/settings/RingerVolume;)[Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$1100()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1300(Lcom/android/settings/RingerVolume;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/RingerVolume$3;->this$0:Lcom/android/settings/RingerVolume;

    #getter for: Lcom/android/settings/RingerVolume;->mUseRingForNotifyDivider:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/RingerVolume;->access$1300(Lcom/android/settings/RingerVolume;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    const v3, 0x204029a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
