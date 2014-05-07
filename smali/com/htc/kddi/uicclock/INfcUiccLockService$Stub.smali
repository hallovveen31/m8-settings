.class public abstract Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;
.super Landroid/os/Binder;
.source "INfcUiccLockService.java"

# interfaces
.implements Lcom/htc/kddi/uicclock/INfcUiccLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/kddi/uicclock/INfcUiccLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.kddi.uicclock.INfcUiccLockService"

.field static final TRANSACTION_changeNfcLockNumber:I = 0x8

.field static final TRANSACTION_closeChannel:I = 0x2

.field static final TRANSACTION_getLastError:I = 0xc

.field static final TRANSACTION_getRetryCountForInitialPIN:I = 0x4

.field static final TRANSACTION_initializeNfcLockNumber:I = 0x6

.field static final TRANSACTION_isNfcLocked:I = 0x3

.field static final TRANSACTION_isNfcRemotedLocked:I = 0xb

.field static final TRANSACTION_openChannel:I = 0x1

.field static final TRANSACTION_setNfcLockState:I = 0x9

.field static final TRANSACTION_setNfcRemotedLockState:I = 0xa

.field static final TRANSACTION_verifyNfcLockInitialPIN:I = 0x5

.field static final TRANSACTION_verifyNfcLockNumber:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/kddi/uicclock/INfcUiccLockService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/kddi/uicclock/INfcUiccLockService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/kddi/uicclock/INfcUiccLockService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->openChannel()Z

    move-result v2

    .line 52
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->closeChannel()Z

    move-result v2

    .line 60
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v2           #_result:Z
    :sswitch_3
    const-string v3, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->isNfcLocked()I

    move-result v2

    .line 68
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v2           #_result:I
    :sswitch_4
    const-string v3, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->getRetryCountForInitialPIN()I

    move-result v2

    .line 76
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v2           #_result:I
    :sswitch_5
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->verifyNfcLockInitialPIN(Ljava/lang/String;)Z

    move-result v2

    .line 86
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->initializeNfcLockNumber(Ljava/lang/String;)Z

    move-result v2

    .line 96
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->verifyNfcLockNumber(Ljava/lang/String;)Z

    move-result v2

    .line 106
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->changeNfcLockNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 118
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_9
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    .line 127
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->setNfcLockState(Z)Z

    move-result v2

    .line 128
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_7
    move v0, v3

    .line 126
    goto :goto_1

    .line 134
    :sswitch_a
    const-string v5, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v4

    .line 137
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->setNfcRemotedLockState(Z)Z

    move-result v2

    .line 138
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_9
    move v0, v3

    .line 136
    goto :goto_2

    .line 144
    :sswitch_b
    const-string v3, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->isNfcRemotedLocked()I

    move-result v2

    .line 146
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v2           #_result:I
    :sswitch_c
    const-string v3, "com.htc.kddi.uicclock.INfcUiccLockService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/kddi/uicclock/INfcUiccLockService$Stub;->getLastError()I

    move-result v2

    .line 154
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
