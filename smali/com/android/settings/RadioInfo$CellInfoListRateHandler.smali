.class Lcom/android/settings/RadioInfo$CellInfoListRateHandler;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellInfoListRateHandler"
.end annotation


# instance fields
.field rates:[I

.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getRate()I
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$3500()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1012
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3512(I)I

    .line 1013
    invoke-static {}, Lcom/android/settings/RadioInfo;->access$3500()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1014
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3502(I)I

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$3500()I

    move-result v2

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings/RadioInfo;

    #calls: Lcom/android/settings/RadioInfo;->updateCellInfoListRate()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)V

    .line 1018
    return-void
.end method
