.class Lcom/android/settings/accounts/OptionTogglePreference$1$1;
.super Ljava/lang/Thread;
.source "OptionTogglePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/OptionTogglePreference$1;->onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/OptionTogglePreference$1;

.field final synthetic val$check:Z


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/OptionTogglePreference$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/accounts/OptionTogglePreference$1$1;->this$1:Lcom/android/settings/accounts/OptionTogglePreference$1;

    iput-boolean p2, p0, Lcom/android/settings/accounts/OptionTogglePreference$1$1;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings/accounts/OptionTogglePreference$1$1;->val$check:Z

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 41
    return-void
.end method
