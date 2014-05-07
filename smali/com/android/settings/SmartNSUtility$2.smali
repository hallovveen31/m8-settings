.class final Lcom/android/settings/SmartNSUtility$2;
.super Ljava/lang/Object;
.source "SmartNSUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSUtility;->closeIPT(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartNSUtility$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v1, "SmartNS_Utility"

    const-string v2, "Close PassThrough"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SmartNSUtility$2;->val$context:Landroid/content/Context;

    const-string v2, "htchardware"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcHardwareManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    return-void
.end method
