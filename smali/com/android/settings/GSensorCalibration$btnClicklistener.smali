.class Lcom/android/settings/GSensorCalibration$btnClicklistener;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "btnClicklistener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/GSensorCalibration$btnClicklistener;-><init>(Lcom/android/settings/GSensorCalibration;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GSensorCalibration"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$400(Lcom/android/settings/GSensorCalibration;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "has_calibrated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0c04c4

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$btnClicklistener;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->mCALHandler:Lcom/android/settings/GSensorCalibration$CALHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
