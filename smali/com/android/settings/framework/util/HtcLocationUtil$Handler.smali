.class public Lcom/android/settings/framework/util/HtcLocationUtil$Handler;
.super Ljava/lang/Object;
.source "HtcLocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcLocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleEnableAgps(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 498
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEnableAgps("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_3

    .line 503
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context or intent is null, context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2
    :goto_0
    return-void

    .line 508
    :cond_3
    const/4 v0, 0x0

    .line 510
    .local v0, enabled:Ljava/lang/Boolean;
    const-string v1, "extra_enabled"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 511
    const-string v1, "extra_enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->enableAGPS(Landroid/content/Context;Z)V

    .line 516
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXTRA_ENABLED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static handleEnableGps(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 522
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleEnableGps(): begin"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    if-nez p0, :cond_2

    .line 525
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleEnableGps(): null == context"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    if-nez p1, :cond_3

    .line 529
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleEnableGps(): null == intent"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_3
    const/4 v1, 0x0

    .line 536
    .local v1, enabled:Z
    const-string v2, "extra_enabled"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 537
    const-string v2, "extra_enabled"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, confirmed:Z
    const-string v2, "extra_confirmed"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    const-string v2, "extra_confirmed"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 548
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->handleGPS(Landroid/content/Context;ZZ)V

    .line 550
    .end local v0           #confirmed:Z
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleEnableGps(): end"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
