.class public Lcom/android/settings/framework/util/HtcSystemPropertyPoker;
.super Landroid/os/AsyncTask;
.source "HtcSystemPropertyPoker.java"


# annotations
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


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    .line 20
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 24
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

    .line 25
    .local v6, service:Ljava/lang/String;
    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 26
    .local v5, obj:Landroid/os/IBinder;
    if-eqz v5, :cond_0

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 29
    .local v1, data:Landroid/os/Parcel;
    const v8, 0x5f535052

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v5, v8, v1, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    .end local v1           #data:Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Landroid/os/IBinder;
    .end local v6           #service:Ljava/lang/String;
    .end local v7           #services:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 36
    :cond_1
    return-object v11

    .line 30
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #data:Landroid/os/Parcel;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #obj:Landroid/os/IBinder;
    .restart local v6       #service:Ljava/lang/String;
    .restart local v7       #services:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 31
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
