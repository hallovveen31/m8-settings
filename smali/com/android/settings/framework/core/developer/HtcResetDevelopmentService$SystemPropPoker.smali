.class Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService$SystemPropPoker;
.super Landroid/os/AsyncTask;
.source "HtcResetDevelopmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemPropPoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService$SystemPropPoker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 94
    .local v7, services:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 95
    .local v6, service:Ljava/lang/String;
    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 96
    .local v5, obj:Landroid/os/IBinder;
    if-eqz v5, :cond_0

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 99
    .local v1, data:Landroid/os/Parcel;
    const v8, 0x5f535052

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v5, v8, v1, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    .end local v1           #data:Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Landroid/os/IBinder;
    .end local v6           #service:Ljava/lang/String;
    .end local v7           #services:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 110
    :cond_1
    return-object v11

    .line 100
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #data:Landroid/os/Parcel;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #obj:Landroid/os/IBinder;
    .restart local v6       #service:Ljava/lang/String;
    .restart local v7       #services:[Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1

    .line 101
    :catch_2
    move-exception v8

    goto :goto_1
.end method
