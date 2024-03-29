.class public abstract Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcAbsReceiver.java"

# interfaces
.implements Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;
.implements Lcom/android/settings/framework/content/HtcIRegister;


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mOnRegisterListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

.field private mPermission:Ljava/lang/String;

.field private final mRegister:Lcom/android/settings/framework/content/HtcIRegister;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mPermission:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;-><init>(Lcom/android/settings/framework/receiver/HtcAbsReceiver;)V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mOnRegisterListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    new-instance v0, Lcom/android/settings/framework/content/HtcRegister;

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mOnRegisterListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/framework/content/HtcRegister;-><init>(Landroid/content/Context;Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;)V

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->setIntentFilter(Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->acquirePermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mPermission:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/receiver/HtcAbsReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/receiver/HtcAbsReceiver;)Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method


# virtual methods
.method protected abstract acquirePermission()Ljava/lang/String;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onRegister()V
    .locals 0

    return-void
.end method

.method public onUnregister()V
    .locals 0

    return-void
.end method

.method public final register()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->register()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/content/HtcIRegister;->setEnabled(Z)V

    return-void
.end method

.method protected abstract setIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method protected setPermission(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mPermission:Ljava/lang/String;

    return-void
.end method

.method public final unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->unregister()V

    return-void
.end method
