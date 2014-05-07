.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation$1;
.super Ljava/lang/Object;
.source "HtcAboutPhoneMoreSoftwareInformation.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->onPlugin(Lcom/htc/preference/HtcPreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported()Z
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportCustomizationWizardVersion()Z

    move-result v0

    return v0
.end method
