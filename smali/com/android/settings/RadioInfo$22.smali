.class Lcom/android/settings/RadioInfo$22;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "pos"
    .parameter "id"

    .prologue
    const/16 v3, 0xc8

    .line 1141
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$4500(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1142
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/android/settings/RadioInfo;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1144
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHtcDTUPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x3

    if-ne p3, v1, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHtcDTUPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-ne p3, v1, :cond_2

    .line 1148
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/16 v2, 0x65

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1149
    :cond_2
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHtcDTUPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_3

    .line 1150
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/16 v2, 0x66

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1152
    :cond_3
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1157
    :cond_4
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHtcPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt p3, v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHtcPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_5

    .line 1161
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1163
    :cond_5
    iget-object v1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1171
    return-void
.end method
