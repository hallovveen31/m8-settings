.class public Lcom/android/settings/applications/AppOpsState$OpsTemplate;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpsTemplate"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final categoryName:Ljava/lang/String;

.field public final ops:[I

.field public final showPerms:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$OpsTemplate$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->categoryName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>([I[Z)V
    .locals 1
    .parameter "_ops"
    .parameter "_showPerms"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    .line 145
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->categoryName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>([I[ZLjava/lang/CharSequence;)V
    .locals 1
    .parameter "_ops"
    .parameter "_showPerms"
    .parameter "_categoryName"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    .line 151
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    .line 152
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->categoryName:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return-void
.end method
