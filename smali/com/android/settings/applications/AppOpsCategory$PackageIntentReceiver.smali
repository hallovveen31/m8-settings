.class public Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Lcom/android/settings/applications/AppOpsCategory$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppOpsCategory$AppListLoader;)V
    .locals 3
    .parameter "loader"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 125
    return-void
.end method
