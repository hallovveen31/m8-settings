.class Lcom/android/settings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1066
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1067
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1069
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/IccLockSettings;->startActivity(Landroid/content/Intent;)V

    .line 1070
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 1071
    return-void
.end method
