.class Lcom/android/settings/WifiCallSwitchPreference$2;
.super Ljava/lang/Object;
.source "WifiCallSwitchPreference.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WifiCallSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/WifiCallSwitchPreference$2;->this$0:Lcom/android/settings/WifiCallSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference$2;->this$0:Lcom/android/settings/WifiCallSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/android/settings/WifiCallSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/settings/WifiCallSwitchPreference;->access$000(Lcom/android/settings/WifiCallSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string v0, "WifiCallSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 180
    :goto_1
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference$2;->this$0:Lcom/android/settings/WifiCallSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/WifiCallSwitchPreference;->setChecked(Z)V

    .line 178
    invoke-virtual {p1, p2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference$2;->this$0:Lcom/android/settings/WifiCallSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/WifiCallSwitchPreference;->onSwitchClicked()V

    goto :goto_1
.end method
