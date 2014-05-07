.class Lcom/android/settings/GSensorCalibration$CALHandler;
.super Landroid/os/Handler;
.source "GSensorCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CALHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorCalibration;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$CALHandler;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorCalibration;Landroid/os/Looper;Lcom/android/settings/GSensorCalibration$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/GSensorCalibration$CALHandler;-><init>(Lcom/android/settings/GSensorCalibration;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "GSensorCalibration"

    const-string v1, "do calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$CALHandler;->this$0:Lcom/android/settings/GSensorCalibration;

    #calls: Lcom/android/settings/GSensorCalibration;->doCalibrate()V
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$900(Lcom/android/settings/GSensorCalibration;)V

    return-void
.end method
