.class public Lcom/android/settings/ChooseLockGeneric;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ChooseLockGeneric;->TAG:Ljava/lang/String;

    .line 59
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockGeneric;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric;->LOGV:Z

    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric;->LOGV:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/settings/ChooseLockGeneric;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 94
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public setMyFragment(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric;->mFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 76
    return-void
.end method
