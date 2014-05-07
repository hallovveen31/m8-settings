.class public Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;
.super Ljava/lang/Object;
.source "HtcActivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;
    .locals 3
    .parameter "msg"
    .parameter "owner"

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 155
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    move-object v0, v1

    .line 156
    goto :goto_0
.end method
