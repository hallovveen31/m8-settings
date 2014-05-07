.class Lcom/android/settings/ISActivity$14;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity;->showWarningDialog_TMOUS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/ISActivity$14;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/settings/ISActivity$14;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v1, "internet_sharing_tmous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "once_tmous"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings/ISActivity$14;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_checkbox_tmous"

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ISActivity$14;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/ISActivity$14;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    .line 424
    return-void
.end method
