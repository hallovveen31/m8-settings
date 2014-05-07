.class Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$2;
.super Ljava/lang/Object;
.source "HtcChildLockListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$2;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$2;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->setValueIndex(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$2;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 221
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 222
    return-void
.end method
