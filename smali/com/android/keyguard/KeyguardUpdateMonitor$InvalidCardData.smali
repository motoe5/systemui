.class Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidCardData"
.end annotation


# instance fields
.field plmn:Ljava/lang/String;

.field slotId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1989
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->slotId:I

    .line 1990
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->plmn:Ljava/lang/String;

    .line 1991
    return-void
.end method
