.class Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;
.super Ljava/lang/Object;
.source "HtcFingerPrintQuickLaunch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->onCreate(Landroid/os/Bundle;)V
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
    .line 130
    iput-object p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    invoke-static {}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "back up button onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

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

    .line 135
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-virtual {v0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->finish()V

    .line 136
    return-void
.end method
