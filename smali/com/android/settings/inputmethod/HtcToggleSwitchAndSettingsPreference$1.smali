.class Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;
.super Ljava/lang/Object;
.source "HtcToggleSwitchAndSettingsPreference.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onCheckBoxClicked()V

    return-void
.end method
