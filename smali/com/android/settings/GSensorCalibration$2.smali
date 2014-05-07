.class Lcom/android/settings/GSensorCalibration$2;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GSensorCalibration;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$2;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$2;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-virtual {v0}, Lcom/android/settings/GSensorCalibration;->onBackPressed()V

    .line 590
    return-void
.end method
