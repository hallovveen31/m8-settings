.class final Lcom/android/settings/SmartNSUtility$4;
.super Ljava/lang/Thread;
.source "SmartNSUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSUtility;->closeAllFunctions(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 580
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 582
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    const-string v3, "sns_type"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 584
    .local v1, type:I
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    const-string v3, "hasTethered"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    const-string v3, "isNSOpening"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    .line 587
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->access$200()Landroid/os/ConditionVariable;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    .line 589
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    const-string v3, "ps_enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.android.stop_IPT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, count:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    const-string v3, "ps_enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 596
    const-string v2, "SmartNS_Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait IPT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->access$200()Landroid/os/ConditionVariable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 601
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 604
    .end local v0           #count:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 605
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 606
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 607
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 610
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    const-string v3, "startCTModem"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 611
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/SmartNSUtility;->StartCTModem(Landroid/content/Context;Z)V

    .line 613
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SmartNSUtility$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "closing_all"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 615
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 617
    return-void
.end method
