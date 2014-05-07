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
    .parameter
    .parameter "looper"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$CALHandler;->this$0:Lcom/android/settings/GSensorCalibration;

    .line 553
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorCalibration;Landroid/os/Looper;Lcom/android/settings/GSensorCalibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/settings/GSensorCalibration$CALHandler;-><init>(Lcom/android/settings/GSensorCalibration;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 559
    const-string v0, "GSensorCalibration"

    const-string v1, "do calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$CALHandler;->this$0:Lcom/android/settings/GSensorCalibration;

    #calls: Lcom/android/settings/GSensorCalibration;->doCalibrate()V
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$900(Lcom/android/settings/GSensorCalibration;)V

    .line 564
    return-void
.end method
