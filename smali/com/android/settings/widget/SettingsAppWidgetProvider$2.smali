.class Lcom/android/settings/widget/SettingsAppWidgetProvider$2;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;->onDisabled(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$2;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1106
    :try_start_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1107
    const-string v3, "disabe start ..."

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1110
    :cond_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1100()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1111
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1100()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1113
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/settings/widget/SettingsAppWidgetReceiver;

    .line 1114
    .local v0, clazz1:Ljava/lang/Class;
    new-instance v3, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1100()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1126
    .end local v0           #clazz1:Ljava/lang/Class;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1127
    const-string v3, "disabe end ..."

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1132
    :cond_2
    :goto_1
    return-void

    .line 1121
    :cond_3
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1122
    const-string v3, "null == sContext"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
