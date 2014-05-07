.class public Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcShowScreenUpdatesPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 69
    const/4 v9, 0x0

    .line 72
    .local v9, value:Ljava/lang/Boolean;
    :try_start_0
    const-string v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 73
    .local v4, flinger:Landroid/os/IBinder;
    if-eqz v4, :cond_1

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 75
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 76
    .local v5, reply:Landroid/os/Parcel;
    const-string v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 77
    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 79
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 81
    .local v7, showCpu:I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .local v2, enableGL:I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 83
    .local v8, showUpdates:I
    if-eqz v8, :cond_0

    const/4 v10, 0x1

    :cond_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 85
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 86
    .local v6, showBackground:I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, disableOverlays:I
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v4           #flinger:Landroid/os/IBinder;
    .end local v5           #reply:Landroid/os/Parcel;
    .end local v6           #showBackground:I
    .end local v7           #showCpu:I
    .end local v8           #showUpdates:I
    :cond_1
    :goto_0
    return-object v9

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, ex:Landroid/os/RemoteException;
    sget-object v10, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remote exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 8
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    :try_start_0
    const-string v5, "SurfaceFlinger"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 100
    .local v2, flinger:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, data:Landroid/os/Parcel;
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    if-eqz p2, :cond_1

    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/16 v5, 0x3ea

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #flinger:Landroid/os/IBinder;
    :cond_0
    :goto_1
    return v3

    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #flinger:Landroid/os/IBinder;
    :cond_1
    move v5, v4

    .line 103
    goto :goto_0

    .line 107
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #flinger:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 108
    .local v1, ex:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 109
    goto :goto_1
.end method
