.class Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;
.super Ljava/lang/Object;
.source "HtcFingerprintEnrollActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "click confirm dialog - ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$200(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->removeFingerprintAndExit()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$400(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$3;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->stopEnrollmentAndExit()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    goto :goto_0
.end method
