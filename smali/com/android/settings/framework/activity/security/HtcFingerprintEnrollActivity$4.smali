.class Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$4;
.super Ljava/lang/Object;
.source "HtcFingerprintEnrollActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showStopEnrollDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$4;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1579
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel confirm dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    return-void
.end method
