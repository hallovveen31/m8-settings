.class Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcInactivityTimeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 543
    iget-object v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->access$000(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 545
    .local v0, selectedValue:I
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 546
    iget-object v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->Log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->access$100(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;Ljava/lang/String;)V

    .line 548
    :cond_0
    if-ne v0, v5, :cond_1

    .line 557
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setValue(Ljava/lang/String;)V

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getSummaryText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
