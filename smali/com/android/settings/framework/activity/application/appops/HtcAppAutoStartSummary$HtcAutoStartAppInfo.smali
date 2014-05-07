.class public Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
.super Ljava/lang/Object;
.source "HtcAppAutoStartSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcAutoStartAppInfo"
.end annotation


# instance fields
.field private appLabel:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

.field public userEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "pm"
    .parameter "resolveInfo"

    .prologue
    const/4 v3, 0x1

    .line 118
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    .line 119
    iput-object p2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 121
    iput-object p4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 123
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mComponentName:Landroid/content/ComponentName;

    .line 125
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->appLabel:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->appLabel:Ljava/lang/String;

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    .line 132
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    .local v0, res:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method public getIconResource()I
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 179
    .local v0, res:I
    if-nez v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v1, Landroid/content/pm/ActivityInfo;->icon:I

    .line 183
    :cond_0
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 162
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    :pswitch_0
    return v1

    .line 164
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    goto :goto_0

    .line 170
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEnable(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 148
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 149
    invoke-static {}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set auto-start app ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 155
    .local v0, state:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 157
    return-void

    .line 152
    .end local v0           #state:I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
