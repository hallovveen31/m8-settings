.class Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;
.super Ljava/lang/Object;
.source "HtcFingerPrintQuickLaunch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;


# direct methods
.method constructor <init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #calls: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z
    invoke-static {v0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$600(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I
    invoke-static {v0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$400(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$700(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I
    invoke-static {v2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$800(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getSelection(Landroid/content/Context;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$400(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I

    move-result v1

    #calls: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->sendQuickLaunchAppRecord(I)V
    invoke-static {v0, v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$900(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$700(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$400(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I
    invoke-static {v2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$800(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$400(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I

    move-result v1

    #calls: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V
    invoke-static {v0, v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$1000(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$200(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-virtual {v0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    return-void
.end method
