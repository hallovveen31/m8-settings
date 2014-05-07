.class final Lcom/android/settings/ChargeOnlyEnabler$4;
.super Ljava/lang/Object;
.source "ChargeOnlyEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChargeOnlyEnabler;->enableAllUSB(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apply:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChargeOnlyEnabler$4;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/ChargeOnlyEnabler$4;->val$apply:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/htc/mdm/connectivity/MDMUsb;

    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/mdm/connectivity/MDMUsb;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/ChargeOnlyEnabler$4;->val$apply:Z

    invoke-virtual {v0, v1}, Lcom/htc/mdm/connectivity/MDMUsb;->setUsbStatus(Z)Z

    return-void
.end method
