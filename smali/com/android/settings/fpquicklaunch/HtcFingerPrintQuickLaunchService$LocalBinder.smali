.class public Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;
.super Landroid/os/Binder;
.source "HtcFingerPrintQuickLaunchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;


# direct methods
.method public constructor <init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->DEBUG:Z
    invoke-static {v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->access$000(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->access$100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-onTransact()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;

    const-string v6, "com.android.settings"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    :goto_1
    return v4

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->access$100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings not found"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService$LocalBinder;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;

    #calls: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->getQuickLaunchApp(Landroid/content/Context;)Ljava/util/ArrayList;
    invoke-static {v4, v3}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;->access$200(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchService;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "quick_launch_app"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    goto :goto_1
.end method
