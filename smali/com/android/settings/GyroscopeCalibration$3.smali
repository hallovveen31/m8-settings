.class Lcom/android/settings/GyroscopeCalibration$3;
.super Ljava/lang/Object;
.source "GyroscopeCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GyroscopeCalibration;->initActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GyroscopeCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/GyroscopeCalibration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration$3;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$3;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
