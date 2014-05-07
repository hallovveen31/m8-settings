.class Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;
.super Ljava/lang/Object;
.source "HtcBrightnessPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    if-nez p3, :cond_1

    .line 207
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const v3, 0x7f0900df

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, v6, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 208
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v4

    .line 209
    .local v1, isChecked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 211
    if-eqz v1, :cond_3

    .line 213
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    .line 214
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I
    invoke-static {v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$000(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingAutoBrightness(I)V

    .line 224
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$300(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, packageName:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v0, "enable"

    .line 228
    .local v0, checkedState:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ATS]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_auto][complete]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ATS]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_auto][complete]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 235
    .end local v0           #checkedState:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v3}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$400(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 237
    .end local v1           #isChecked:Z
    :cond_1
    return-void

    :cond_2
    move v1, v5

    .line 208
    goto/16 :goto_0

    .line 217
    .restart local v1       #isChecked:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    .line 218
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I
    invoke-static {v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$100(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    goto/16 :goto_1

    .line 226
    .restart local v2       #packageName:Ljava/lang/String;
    :cond_4
    const-string v0, "disable"

    goto :goto_2
.end method
