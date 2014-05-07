.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;
.super Ljava/lang/Object;
.source "HtcAboutPhoneHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->applyVerizonSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;

.field final synthetic val$host:Lcom/android/settings/framework/app/HtcIInternalHost;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;

    iput-object p2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;->val$host:Lcom/android/settings/framework/app/HtcIInternalHost;

    iput-object p3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;->val$host:Lcom/android/settings/framework/app/HtcIInternalHost;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;->val$intent:Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    .line 308
    return-void
.end method
