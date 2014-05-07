.class public Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Handler;
.super Ljava/lang/Object;
.source "ThreelmEnterpriseServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleEmergencyLockPolicy(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    #calls: Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;->isIntentEmpty(Landroid/content/Intent;)Z
    invoke-static {p1}, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;->access$000(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->ACTION_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->EXTRA_EMERGENCY_LOCK_POLICY_STATUS:Ljava/lang/String;

    sget v2, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->EXTRA_EMERGENCY_LOCK_POLICY_STATUS_DISABLED:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->EXTRA_EMERGENCY_LOCK_POLICY_STATUS_ENABLED:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
