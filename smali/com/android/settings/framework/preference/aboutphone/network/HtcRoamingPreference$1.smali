.class Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference$1;
.super Ljava/lang/Object;
.source "HtcRoamingPreference.java"

# interfaces
.implements Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->attachRoamingStateNotifier(Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoamingStateChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    return-void
.end method
