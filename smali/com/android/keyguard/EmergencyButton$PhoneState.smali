.class Lcom/android/keyguard/EmergencyButton$PhoneState;
.super Ljava/lang/Object;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneState"
.end annotation


# instance fields
.field private callState:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p1, p0, Lcom/android/keyguard/EmergencyButton$PhoneState;->callState:I

    .line 278
    return-void
.end method


# virtual methods
.method public isInCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 281
    iget v1, p0, Lcom/android/keyguard/EmergencyButton$PhoneState;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/EmergencyButton$PhoneState;->callState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
