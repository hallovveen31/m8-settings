.class public Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcDisableHwOverlaysPreference.java"


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

    const-class v1, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;->TAG:Ljava/lang/String;

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
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "disable_overlays"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 73
    const/4 v8, 0x0

    .line 76
    .local v8, value:Ljava/lang/Boolean;
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 77
    .local v3, flinger:Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 79
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 80
    .local v4, reply:Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 85
    .local v6, showCpu:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, enableGL:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 88
    .local v7, showUpdates:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 89
    .local v5, showBackground:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, disableOverlays:I
    if-eqz v1, :cond_0

    const/4 v9, 0x1

    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 91
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v3           #flinger:Landroid/os/IBinder;
    .end local v4           #reply:Landroid/os/Parcel;
    .end local v5           #showBackground:I
    .end local v6           #showCpu:I
    .end local v7           #showUpdates:I
    :cond_1
    :goto_0
    return-object v8

    .line 94
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 9
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 102
    :try_start_0
    const-string v6, "SurfaceFlinger"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 103
    .local v3, flinger:Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    .local v0, data:Landroid/os/Parcel;
    const-string v6, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    if-eqz p2, :cond_1

    move v1, v4

    .line 107
    .local v1, disableOverlays:I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/16 v6, 0x3f0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v6, v0, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v3           #flinger:Landroid/os/IBinder;
    :cond_0
    :goto_1
    return v4

    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v3       #flinger:Landroid/os/IBinder;
    :cond_1
    move v1, v5

    .line 106
    goto :goto_0

    .line 111
    .end local v0           #data:Landroid/os/Parcel;
    .end local v3           #flinger:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 112
    .local v2, ex:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 113
    goto :goto_1
.end method
