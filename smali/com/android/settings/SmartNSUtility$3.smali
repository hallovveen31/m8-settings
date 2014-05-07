.class final Lcom/android/settings/SmartNSUtility$3;
.super Ljava/lang/Object;
.source "SmartNSUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSUtility;->enableRMNET(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 500
    iput p1, p0, Lcom/android/settings/SmartNSUtility$3;->val$value:I

    iput-object p2, p0, Lcom/android/settings/SmartNSUtility$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 504
    const-string v1, "SmartNS_Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable PC modem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SmartNSUtility$3;->val$value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/android/settings/SmartNSUtility$3;->val$context:Landroid/content/Context;

    const-string v2, "htchardware"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcHardwareManager;

    .line 508
    .local v0, mService:Lcom/htc/service/HtcHardwareManager;
    iget v1, p0, Lcom/android/settings/SmartNSUtility$3;->val$value:I

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    .line 509
    return-void
.end method
