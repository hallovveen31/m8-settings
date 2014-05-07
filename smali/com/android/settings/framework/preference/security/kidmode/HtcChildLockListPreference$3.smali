.class Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$3;
.super Ljava/lang/Object;
.source "HtcChildLockListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->onDialogClosed(Z)V
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
    .line 239
    iput-object p1, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$3;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$3;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$000(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$3;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    invoke-virtual {v2}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #calls: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->setExitAction(Landroid/content/Context;I)I
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$400(Landroid/content/Context;I)I

    move-result v0

    .line 244
    .local v0, raws:I
    invoke-static {}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-static {}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed, raws = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return-void
.end method
