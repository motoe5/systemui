.class public Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
.super Ljava/lang/Object;
.source "NotificationSwipeActionHelper.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnoozeOption"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public confirmation:Ljava/lang/CharSequence;

.field public criterion:Landroid/service/notification/SnoozeCriterion;

.field public description:Ljava/lang/CharSequence;

.field public snoozeForMinutes:I


# direct methods
.method public constructor <init>(Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "crit"    # Landroid/service/notification/SnoozeCriterion;
    .param p2, "minsToSnoozeFor"    # I
    .param p3, "desc"    # Ljava/lang/CharSequence;
    .param p4, "confirm"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->criterion:Landroid/service/notification/SnoozeCriterion;

    .line 69
    iput p2, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->snoozeForMinutes:I

    .line 70
    iput-object p3, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->description:Ljava/lang/CharSequence;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->confirmation:Ljava/lang/CharSequence;

    .line 72
    return-void
.end method
