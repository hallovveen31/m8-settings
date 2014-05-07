.class Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;
.super Ljava/lang/Object;
.source "HtcBrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I
    invoke-static {v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$500(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #setter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I
    invoke-static {v1, p2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$002(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;I)I

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I
    invoke-static {v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$000(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingAutoBrightness(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    invoke-interface {v2, p2}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v2

    #setter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$102(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;I)I

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    invoke-interface {v2, p2}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    invoke-static {}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$300(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATS]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][adjust_brightness][start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v2, "[ATS][adjust_brightness][start]"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$300(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATS]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][adjust_brightness][finish]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v2, "[ATS][adjust_brightness][finish]"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;->this$1:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
