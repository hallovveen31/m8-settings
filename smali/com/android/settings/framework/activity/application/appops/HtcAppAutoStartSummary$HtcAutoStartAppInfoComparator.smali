.class public Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;
.super Ljava/lang/Object;
.source "HtcAppAutoStartSummary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcAutoStartAppInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter
    .parameter "pm"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 80
    iput-object p2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 81
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;)I
    .locals 6
    .parameter "obj0"
    .parameter "obj1"

    .prologue
    .line 85
    move-object v3, p1

    .line 86
    .local v3, ri0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    move-object v4, p2

    .line 91
    .local v4, ri1:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, label0:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getLabel()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    .local v2, label1:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 94
    .end local v1           #label0:Ljava/lang/String;
    .end local v2           #label1:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #label0:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #label1:Ljava/lang/String;
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    check-cast p1, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .end local p1
    check-cast p2, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;->compare(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;)I

    move-result v0

    return v0
.end method
