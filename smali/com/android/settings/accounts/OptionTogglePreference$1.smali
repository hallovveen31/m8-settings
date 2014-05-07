.class Lcom/android/settings/accounts/OptionTogglePreference$1;
.super Ljava/lang/Object;
.source "OptionTogglePreference.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/OptionTogglePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/OptionTogglePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/OptionTogglePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/accounts/OptionTogglePreference$1;->this$0:Lcom/android/settings/accounts/OptionTogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "checked"

    .prologue
    .line 37
    move v0, p2

    .line 38
    .local v0, check:Z
    new-instance v1, Lcom/android/settings/accounts/OptionTogglePreference$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/accounts/OptionTogglePreference$1$1;-><init>(Lcom/android/settings/accounts/OptionTogglePreference$1;Z)V

    invoke-virtual {v1}, Lcom/android/settings/accounts/OptionTogglePreference$1$1;->start()V

    .line 43
    iget-object v1, p0, Lcom/android/settings/accounts/OptionTogglePreference$1;->this$0:Lcom/android/settings/accounts/OptionTogglePreference;

    #getter for: Lcom/android/settings/accounts/OptionTogglePreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;
    invoke-static {v1}, Lcom/android/settings/accounts/OptionTogglePreference;->access$000(Lcom/android/settings/accounts/OptionTogglePreference;)Lcom/htc/widget/HtcToggleButtonLight;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 44
    return-void
.end method
